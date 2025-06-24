import std.stdio;


class Node {
  string data;
  Node next;

  this(string data) {
    this.data = data;
    this.next = null;
  }

    override string toString() {
    if (this.next is null) {
      return "";
    } else {
      return data ~ "-> " ~ next.toString();
    }
  }
}

class LinkedList {
  Node head;

  void push(string data) {
    auto newNode = new Node(data);
    newNode.next = head;
    head = newNode;
  }
  
  void display() {
    auto current = head;
    while(current !is null) {
      write(current);
      current = current.next;
    }
    }
}

void main()
{
  LinkedList llist = new LinkedList();
  llist.push("bir");
  llist.push("salom");
  llist.push("qalesan");
  llist.display();
}
