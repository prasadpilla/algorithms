var Node = function (data, next) {
	this.data = data;
	this.next = next;
}

Node.prototype.changeNext = function (next) {
	this.next = next;
}

var LinkedList = function () {
	console.log('new linked list')
	this.nodes = [];
	this.firstNode;
	this.lastNode;
}

LinkedList.prototype.addNode = function (data) {
	var newNodeLocation = this.nodes.length;
	var newNode = new Node(data, null);

	if (this.lastNode >= 0) {
		var i = this.lastNode;
		this.nodes[i].changeNext(newNodeLocation);
	}
	
	this.firstNode = this.firstNode || 0;
	this.nodes.push(newNode);
	this.lastNode = newNodeLocation;
}


var a = new LinkedList()
a.addNode(4)

a.addNode(2)
a.addNode(9)

console.log(a.firstNode)
console.log(a.lastNode)
console.log(a.nodes)