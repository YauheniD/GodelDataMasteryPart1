using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.IO;
using TestQueryProject;


namespace _Origin
{
    [TestClass]
    public class Task1
    {
        private static string connectionString;
        private static string resultsDirectory;
        private static string tasksDirectory;

        [ClassInitialize()]
        public static void ClassInit(TestContext context)
        {
            connectionString = Helper.ConnectionString();
            resultsDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "TestResults", System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name);
            tasksDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "Tasks", System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Namespace, System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name);
        }

        [TestMethod]
        public void Query01()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query01.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query01.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query02()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query02.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query02.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query03()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query03.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query03.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query04()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query04.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query04.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query05()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query05.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query05.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query06()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query06.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query06.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query07()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query07.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query07.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query08()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query08.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query08.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query09()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query09.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query09.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query10()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query10.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query10.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }
    }

    [TestClass]
    public class Task2
    {
        private static string connectionString;
        private static string resultsDirectory;
        private static string tasksDirectory;

        [ClassInitialize()]
        public static void ClassInit(TestContext context)
        {
            connectionString = Helper.ConnectionString();
            resultsDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "TestResults", System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name);
            tasksDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "Tasks", System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Namespace, System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name);
        }

        [TestMethod]
        public void Query01()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query01.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query01.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query02()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query02.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query02.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query03()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query03.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query03.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query04()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query04.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query04.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query05()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query05.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query05.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query06()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query06.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query06.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query07()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query07.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query07.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query08()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query08.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query08.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query09()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query09.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query09.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }
    }

    [TestClass]
    public class Task3
    {
        private static string connectionString;
        private static string resultsDirectory;
        private static string tasksDirectory;

        [ClassInitialize()]
        public static void ClassInit(TestContext context)
        {
            connectionString = Helper.ConnectionString();
            resultsDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "TestResults", System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name);
            tasksDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "Tasks", System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Namespace, System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name);
        }

        [TestMethod]
        public void Query01()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query01.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query01.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query02()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query02.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query02.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query03()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query03.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query03.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query04()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query04.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query04.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query05()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query05.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query05.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query06()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query06.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query06.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query07()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query07.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query07.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query08()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query08.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query08.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);

            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }
    }
}
