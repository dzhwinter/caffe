import sys
sys.path.insert(0, '../../python')
import caffe
from caffe import layers as L, params as P
from caffe.proto import caffe_pb2

n = caffe.NetSpec()
def test_net(n_dev):
    n = caffe.NetSpec()