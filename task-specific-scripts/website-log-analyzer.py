#analyzes the logs of my website and returns the number of unique visitors, the number of page views, and the number of hits.
# The script should also return the average number of pages viewed per visitor, and the average number of hits per visitor.
# The script should take the log file as input and return the results as output.

import sys
import re
REGEX_NORMAL="""^(\d+\.\d+\.\d+\.\d+) .*GET\s+(.+)\s+HTTP/[^"]+"\s+(\d+)"""
REGEX_BADREQ="""^(\d+\.\d+\.\d+\.\d+) .*"([^"]+)"\s+HTTPStatus.BAD_REQUEST"""

reNormal = re.compile(REGEX_NORMAL)
reBadReq = re.compile(REGEX_BADREQ)

class Visitor:
    def __init__(self, ip):
        self.ip = ip
        self.pages = []
        self.isRobot = False
        self.isBadReq = False
        self.badReqs = []
        
    def add_page(self, page, status):
        self.pages.append([page, status])
        if "robots.txt" in page:
            self.isRobot = True
    
    def add_bad_req(self, page, status):
        self.isBadReq = True
        self.badReqs.append([page, status])

    def hits(self):
        return len(self.pages)
    
    def uniqueHits(self):
        return len(set ([x[0] for x in self.pages]))
    

def analyze_logs(log_file):
    visitors = {}

    with open(log_file, 'r') as file:
        for line in file:
            l = line.strip()
            if reNormal.match(l):
                ip, page, status = reNormal.match(l).groups()

                if ip not in visitors:
                    visitors[ip] = Visitor(ip)
                v = visitors[ip]

                v.add_page(page, status)
            elif reBadReq.match(l):
                ip, page = reBadReq.match(l).groups()

                if ip not in visitors:
                    visitors[ip] = Visitor(ip)
                v = visitors[ip]

                v.add_bad_req(page, -1)

    return visitors              


def sort_pages(v):
    pages = {}
    for visitor in v.values():
        for page in visitor.pages:
            if page[0] not in pages:
                pages[page[0]] = 1
            else:
                pages[page[0]] += 1
    return sorted(pages.items(), key=lambda x: x[1], reverse=True)


if len(sys.argv) != 2:
    print("Usage: python website-log-analyzer.py <log file>")
    sys.exit(1)

V = analyze_logs(sys.argv[1])
print("Number of unique visitors: ", len(V))
print("Number of page views: ", sum([v.hits() for v in V.values()]))
print("Number of unique hits: ", sum([v.uniqueHits() for v in V.values()]))
print("Average number of pages viewed per visitor: ", sum([v.hits() for v in V.values()])/len(V))
print("Average number of hits per visitor: ", sum([v.uniqueHits() for v in V.values()])/len(V))
print ("Number of robots: ", len([v for v in V.values() if v.isRobot]))
print ("Number of bad requests: ", len([v for v in V.values() if v.isBadReq]))
print ("Number of robots.txt request: ", len([v for v in V.values() if v.isRobot and "robots.txt" in v.pages[0][0]]))

sortedPages =  sort_pages(V)
print("Top 20 REQUESTS:")
print(sortedPages[:20])
print("Top 20 HTML PAGES:")
print([x for x in sortedPages if ".html" in x[0]][:20])