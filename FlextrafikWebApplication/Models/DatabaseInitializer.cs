using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace FlextrafikWebApplication.Models
{
    public class DatabaseInitializer : DropCreateDatabaseIfModelChanges<Context>
    {
        protected override void Seed(Context context)
        {
            GetCars().ForEach(c => context.Cars.Add(c));
            GetUsers().ForEach(u => context.Users.Add(u));
            GetLocations().ForEach(l => context.Locations.Add(l));
            GetPrices().ForEach(p => context.Prices.Add(p));
        }

        private static List<Car> GetCars()
        {
            var cars = new List<Car>
            {
                new Car
                {
                    CarID = 1,
                    OfferNumber = 1,
                    GuaranteeCarNumber = 2,
                    RegistrationNumber = 123456,
                    ContactTelephone = "12 34 56 78",
                    CarType = 1,
                    //CarLocation = null,
                    //CarPrice = null,
                    //CarOwner = null
                },
                
                new Car
                {
                    CarID = 3,
                    OfferNumber = 2,
                    GuaranteeCarNumber = 4,
                    RegistrationNumber = 654321,
                    ContactTelephone = "87 65 43 21",
                    CarType = 2,
                    CarLocation = null,
                    CarPrice = null,
                    CarOwner = null
                },

            };
            
            return cars;
        }

        private static List<User> GetUsers()
        {
            var users = new List<User>
            {
                new User
                {
                    UserID = 1,
                    UserName = "Firma A",
                    CompanyCVR = 12345678
                },

                new User
                {
                    UserID = 2,
                    UserName = "Firma B",
                    CompanyCVR = 98765432
                }
            };

            return users;
        }

        private static List<Location> GetLocations()
        {
            var locations = new List<Location>
            {
                new Location
                {
                    LocationID = 1,
                    StreetName = "Testgade",
                    StreetNumber = 4,
                    PostalCode = 5000,
                    City = "Odense",
                    Municipality = "Odense",
                },

                  new Location
                {
                    LocationID = 2,
                    StreetName = "Testvej",
                    StreetNumber = 34,
                    PostalCode = 5300,
                    City = "Kerteminde",
                    Municipality = "Kerteminde",
                }
            };

            return locations;
        }

        private static List<Price> GetPrices()
        {
            var prices = new List<Price>
            {
                new Price
                {
                    PriceID = 1,
                    StartupFeeWeekday = 30.00,
                    RunningRateWeekday = 330.00,
                    WaitingRateWeekday = 250.00,
                    StartupFeeEvening = 60.00,
                    RunningRateEvening = 500.00,
                    WaitingRateEvening = 400.00,
                    StartupFeeWeekend = 600.00,
                    RunningRateWeekend = 500.00,
                    WaitingRateWeekend = 400.00,
                },

                    new Price
                {
                    PriceID = 2,
                    StartupFeeWeekday = 10.00,
                    RunningRateWeekday = 249.00,
                    WaitingRateWeekday = 249.00,
                    StartupFeeEvening = 20.00,
                    RunningRateEvening = 269.00,
                    WaitingRateEvening = 269.00,
                    StartupFeeWeekend = 20.00,
                    RunningRateWeekend = 269.00,
                    WaitingRateWeekend = 269.00,
                },
            };

            return prices;
        }
    }
}