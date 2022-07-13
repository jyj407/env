import onnx, onnx.numpy_helper
model = onnx.load("lenet_bcm_on_chip_1.onnx")
[tensor] = [t for t in model.graph.initializer if t.name == "new35" ]
w = numpy_helper.to_array(tensor)
print(w)
