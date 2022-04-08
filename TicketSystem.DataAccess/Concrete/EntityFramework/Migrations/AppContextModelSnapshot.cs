﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using TicketSystem.DataAccess.Concrete.EntityFramework;

#nullable disable

namespace TicketSystem.DataAccess.Concrete.EntityFramework.Migrations
{
    [DbContext(typeof(AppContext))]
    partial class AppContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Category", b =>
                {
                    b.Property<int>("CategoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CategoryId"), 1L, 1);

                    b.Property<string>("CategoryName")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("CategoryId");

                    b.ToTable("Categories");

                    b.HasData(
                        new
                        {
                            CategoryId = 1,
                            CategoryName = "Science Fiction"
                        },
                        new
                        {
                            CategoryId = 2,
                            CategoryName = "Romantic"
                        },
                        new
                        {
                            CategoryId = 3,
                            CategoryName = "Comedy"
                        },
                        new
                        {
                            CategoryId = 4,
                            CategoryName = "Horror"
                        });
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Cinema", b =>
                {
                    b.Property<int>("CinemaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CinemaId"), 1L, 1);

                    b.Property<string>("CinemaAddress")
                        .IsRequired()
                        .HasMaxLength(500)
                        .HasColumnType("nvarchar(500)");

                    b.Property<string>("CinemaName")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("CinemaId");

                    b.ToTable("Cinemas");

                    b.HasData(
                        new
                        {
                            CinemaId = 1,
                            CinemaAddress = "Anteras AVM",
                            CinemaName = "Cinemaximum"
                        },
                        new
                        {
                            CinemaId = 2,
                            CinemaAddress = "Kızılay",
                            CinemaName = "Deniz Feneri"
                        });
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Customer", b =>
                {
                    b.Property<int>("CustomerId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("CustomerId"), 1L, 1);

                    b.Property<string>("Address")
                        .HasMaxLength(500)
                        .HasColumnType("nvarchar(500)");

                    b.Property<DateTime?>("Birthdate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("PhoneNumber")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Surname")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.HasKey("CustomerId");

                    b.ToTable("Customers");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Employee", b =>
                {
                    b.Property<int>("EmpoyeeId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("EmpoyeeId"), 1L, 1);

                    b.Property<int>("CinemaId")
                        .HasColumnType("int");

                    b.Property<string>("EmpAddress")
                        .HasMaxLength(500)
                        .HasColumnType("nvarchar(500)");

                    b.Property<DateTime?>("EmpBirthDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("EmpEmail")
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<string>("EmpName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("EmpPassword")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("EmpPhoneNumber")
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.Property<string>("EmpSurname")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<string>("EmpUserName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("EmpoyeeId");

                    b.HasIndex("CinemaId");

                    b.ToTable("Employees");

                    b.HasData(
                        new
                        {
                            EmpoyeeId = 1,
                            CinemaId = 1,
                            EmpAddress = "Ankara",
                            EmpBirthDate = new DateTime(2022, 5, 8, 14, 26, 2, 674, DateTimeKind.Local).AddTicks(5010),
                            EmpEmail = "sncr.@html.com",
                            EmpName = "Ismail",
                            EmpPassword = "Admin",
                            EmpPhoneNumber = "0534543123",
                            EmpSurname = "Bal",
                            EmpUserName = "Admin"
                        });
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Movie", b =>
                {
                    b.Property<int>("MovieId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("MovieId"), 1L, 1);

                    b.Property<int>("EmployeeId")
                        .HasColumnType("int");

                    b.Property<int?>("MovieAgeLimit")
                        .HasColumnType("int");

                    b.Property<byte[]>("MovieBanner")
                        .IsRequired()
                        .HasColumnType("varbinary(max)");

                    b.Property<int>("MovieCategoryId")
                        .HasColumnType("int");

                    b.Property<int?>("MovieIMDB")
                        .HasColumnType("int");

                    b.Property<string>("MovieName")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)");

                    b.Property<DateTime>("MovieReleaseTime")
                        .HasColumnType("datetime2");

                    b.Property<string>("MovieReview")
                        .HasMaxLength(500)
                        .HasColumnType("nvarchar(500)");

                    b.Property<DateTime>("MovieVisionDate")
                        .HasColumnType("datetime2");

                    b.HasKey("MovieId");

                    b.HasIndex("EmployeeId");

                    b.HasIndex("MovieCategoryId");

                    b.ToTable("Movies");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Payment", b =>
                {
                    b.Property<int>("PaymentId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PaymentId"), 1L, 1);

                    b.Property<string>("CVV")
                        .IsRequired()
                        .HasMaxLength(5)
                        .HasColumnType("nvarchar(5)");

                    b.Property<string>("CardDueDate")
                        .IsRequired()
                        .HasMaxLength(5)
                        .HasColumnType("nvarchar(5)");

                    b.Property<string>("CardId")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("nvarchar(20)");

                    b.Property<string>("CardUserName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<int>("CustomerId")
                        .HasColumnType("int");

                    b.Property<string>("EInvoice")
                        .IsRequired()
                        .HasMaxLength(1)
                        .HasColumnType("nvarchar(1)");

                    b.HasKey("PaymentId");

                    b.HasIndex("CustomerId");

                    b.ToTable("Payments");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Scene", b =>
                {
                    b.Property<int>("SceneId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("SceneId"), 1L, 1);

                    b.Property<int>("CinemaId")
                        .HasColumnType("int");

                    b.Property<string>("SceneName")
                        .IsRequired()
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.Property<string>("SceneType")
                        .IsRequired()
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("SceneId");

                    b.HasIndex("CinemaId");

                    b.ToTable("Scenes");

                    b.HasData(
                        new
                        {
                            SceneId = 1,
                            CinemaId = 1,
                            SceneName = "543",
                            SceneType = "Three-D"
                        },
                        new
                        {
                            SceneId = 2,
                            CinemaId = 1,
                            SceneName = "761",
                            SceneType = "Normal"
                        });
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Seat", b =>
                {
                    b.Property<int>("SeatId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("SeatId"), 1L, 1);

                    b.Property<int>("SceneId")
                        .HasColumnType("int");

                    b.Property<int>("SeatNumber")
                        .HasColumnType("int");

                    b.Property<int>("SeatRow")
                        .HasColumnType("int");

                    b.HasKey("SeatId");

                    b.HasIndex("SceneId");

                    b.ToTable("Seats");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Session", b =>
                {
                    b.Property<int>("SessionId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("SessionId"), 1L, 1);

                    b.Property<int>("MovieId")
                        .HasColumnType("int");

                    b.Property<int>("SceneId")
                        .HasColumnType("int");

                    b.Property<int>("SessionHour")
                        .HasMaxLength(5)
                        .HasColumnType("int");

                    b.Property<DateTime>("SessionTime")
                        .HasColumnType("datetime2");

                    b.HasKey("SessionId");

                    b.HasIndex("MovieId");

                    b.HasIndex("SceneId");

                    b.ToTable("Sessions");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Ticket", b =>
                {
                    b.Property<int>("TicketId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("TicketId"), 1L, 1);

                    b.Property<int>("AdultNum")
                        .HasColumnType("int");

                    b.Property<int>("CustomerId")
                        .HasColumnType("int");

                    b.Property<decimal>("Price")
                        .HasColumnType("money");

                    b.Property<int>("SessionId")
                        .HasColumnType("int");

                    b.Property<int>("StudentNum")
                        .HasColumnType("int");

                    b.HasKey("TicketId");

                    b.HasIndex("CustomerId");

                    b.HasIndex("SessionId");

                    b.ToTable("Tickets");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Employee", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Cinema", "Cinema")
                        .WithMany("Employees")
                        .HasForeignKey("CinemaId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Cinema");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Movie", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Employee", "Employee")
                        .WithMany("Movies")
                        .HasForeignKey("EmployeeId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.HasOne("TicketSystem.Entities.SystemEntities.Category", "Category")
                        .WithMany("Movies")
                        .HasForeignKey("MovieCategoryId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Category");

                    b.Navigation("Employee");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Payment", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Customer", "Customer")
                        .WithMany("Payments")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Customer");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Scene", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Cinema", "Cinema")
                        .WithMany("Scenes")
                        .HasForeignKey("CinemaId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Cinema");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Seat", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Scene", "Scene")
                        .WithMany("Seats")
                        .HasForeignKey("SceneId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Scene");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Session", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Movie", "Movie")
                        .WithMany("Sessions")
                        .HasForeignKey("MovieId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.HasOne("TicketSystem.Entities.SystemEntities.Scene", "Scene")
                        .WithMany("Sessions")
                        .HasForeignKey("SceneId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.Navigation("Movie");

                    b.Navigation("Scene");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Ticket", b =>
                {
                    b.HasOne("TicketSystem.Entities.SystemEntities.Customer", "Customer")
                        .WithMany("Tickets")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.NoAction)
                        .IsRequired();

                    b.HasOne("TicketSystem.Entities.SystemEntities.Session", "Session")
                        .WithMany("Tickets")
                        .HasForeignKey("SessionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Customer");

                    b.Navigation("Session");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Category", b =>
                {
                    b.Navigation("Movies");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Cinema", b =>
                {
                    b.Navigation("Employees");

                    b.Navigation("Scenes");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Customer", b =>
                {
                    b.Navigation("Payments");

                    b.Navigation("Tickets");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Employee", b =>
                {
                    b.Navigation("Movies");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Movie", b =>
                {
                    b.Navigation("Sessions");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Scene", b =>
                {
                    b.Navigation("Seats");

                    b.Navigation("Sessions");
                });

            modelBuilder.Entity("TicketSystem.Entities.SystemEntities.Session", b =>
                {
                    b.Navigation("Tickets");
                });
#pragma warning restore 612, 618
        }
    }
}
