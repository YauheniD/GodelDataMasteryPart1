using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;
using System.IO;


namespace TestQueryProject
{
    [TestClass]
    public class UnitTestTask2
    {
        private string connectionString;
        private string resultsDirectory;
        private string tasksDirectory;
        [TestInitialize]
        public void Initialize()
        {
            this.resultsDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "TestResults", "Task2");
            this.tasksDirectory = Path.Combine(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName, "Tasks", "Task2");

            this.connectionString = "Data Source=localhost;Initial Catalog=AdventureWorks2019;Integrated Security=True;";
        }

        [TestMethod]
        public void Query01TestMethod()
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
        public void Query02TestMethod()
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
        public void Query03TestMethod()
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
        public void Query04TestMethod()
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
        public void Query05TestMethod()
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
        public void Query06TestMethod()
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
        public void Query07TestMethod()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query07.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query07.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);
            foreach (DataColumn column in expected.Columns)
                System.Diagnostics.Trace.WriteLine("\t", column.ColumnName);

            // перебор всех строк таблицы
            foreach (DataRow row in expected.Rows)
            {
                // получаем все ячейки строки
                var cells = row.ItemArray;
                foreach (object cell in cells)
                    System.Diagnostics.Trace.WriteLine("\t", cell.ToString());

            }
            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query08TestMethod()
        {
            // Arrange         
            var expectedFilePath = Path.Combine(resultsDirectory, "query08.bin");
            var actualFilePath = Path.Combine(tasksDirectory, "query08.sql");

            // Act
            var actual = Helper.ExecuteSqlFile(connectionString, actualFilePath);
            var expected = Helper.ConvertBinToDataTable(expectedFilePath);
            
            
            foreach (DataRow row in expected.Rows)
            {
                // получаем все ячейки строки
                var cells = row.ItemArray;
                foreach (object cell in cells)
                    System.Diagnostics.Trace.WriteLine("\t", cell.ToString());
                
            }
            // Assert
            Assert.IsTrue(Helper.AreTablesTheSame(actual, expected));
        }

        [TestMethod]
        public void Query09TestMethod()
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
}
