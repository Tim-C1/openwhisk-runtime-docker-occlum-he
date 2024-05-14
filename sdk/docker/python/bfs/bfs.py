import sys
import random
import datetime
import networkx as nx

SEED=42
random.seed(SEED)

graph_generating_begin = datetime.datetime.now()
graph = nx.barabasi_albert_graph(12, 10)
graph_generating_end = datetime.datetime.now()
process_begin = datetime.datetime.now()
result = len(list(nx.edge_bfs(graph)))
process_end = datetime.datetime.now()
graph_generating_time = (graph_generating_end - graph_generating_begin) / datetime.timedelta(microseconds=1)
process_time = (process_end - process_begin) / datetime.timedelta(microseconds=1)
print('{"msg": "success"}')
