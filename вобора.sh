using System;
using System.Collections.Generic;
namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            StartArray StartArray = new StartArray();

            StartArray.Start();
            Console.ReadKey();
        }
    }
}
class StartArray
{
    public List<int> startArray = new List<int>();


    public void Start()
    {

        Console.WriteLine("Введите цифру ");
        startArray.Add(Convert.ToInt32(Console.ReadLine()));

        Console.WriteLine("Добавить еще цифру? (Y/N) ");
        string y = Console.ReadLine();
        if (y == "Y" || y == "y" || y == "н" || y == "Н")
        {
            Start();
        }
        else
        {
            Console.WriteLine("Добовление закончен. Массив содержит " + startArray.Count + " эллементов ");
            string arrayPrint = "{";
            for (int i = 0; i < startArray.Count; i++)
            {
                if (i == 0)
                {
                    arrayPrint += startArray[i];
                }
                else
                {
                    arrayPrint += "," + startArray[i];
                }

            }
            arrayPrint += "}";

            Console.WriteLine(arrayPrint);

            Console.WriteLine("Начинаю сортировку ");
            sort();
            for (int i = 0; i < startArray.Count; i++)
            {
                Console.Write(startArray[i] + " ");
            }
        }

    }
    void sort()
    {
        int min, temp;
        int length = startArray.Count;

        for (int i = 0; i < length - 1; i++)
        {
            min = i;

            for (int j = i + 1; j < length; j++)
            {
                if (startArray[j] < startArray[min])
                {
                    min = j;
                }
            }

            if (min != i)
            {
                temp = startArray[i];
                startArray[i] = startArray[min];
                startArray[min] = temp;
            }
        }




    }
}
