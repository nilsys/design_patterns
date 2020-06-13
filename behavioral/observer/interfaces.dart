abstract class Publisher {
  void attach(Subscriber subscriber);
  void detach(Subscriber subscriber);
  void notify();
}

abstract class Subscriber {
  void update(Publisher publisher);
}
