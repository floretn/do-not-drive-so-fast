#ifndef CAR_H
#define CAR_H

class Car
{
    public:
      Car(int distance, int fuel) {
        this->distance = distance;
        this->fuel = fuel;
      }

      void setDiastance(int distance) {
        this->distance = distance;
      }

      void setFuel(int fuel) {
        this->fuel = fuel;
      }

      int getDiastance() {
        return distance;
      }

      int getFuel() {
        return fuel;
      }

      ~Car() {
        
      }
      
    private:
      int fuel;
      int distance;
};

#endif // CAR_H