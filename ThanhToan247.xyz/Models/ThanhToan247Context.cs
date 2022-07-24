using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class ThanhToan247Context : DbContext
    {
        public ThanhToan247Context()
        {
        }

        public ThanhToan247Context(DbContextOptions<ThanhToan247Context> options)
            : base(options)
        {
        }

        public virtual DbSet<CardCode> CardCodes { get; set; }
        public virtual DbSet<CardPrice> CardPrices { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<HistoryRecharge> HistoryRecharges { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                var config = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build();
                optionsBuilder.UseSqlServer(config.GetConnectionString("DbConnection"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<CardCode>(entity =>
            {
                entity.ToTable("CardCode");

                entity.Property(e => e.CardCodeId).HasColumnName("CardCodeID");

                entity.Property(e => e.CardPriceId).HasColumnName("CardPriceID");

                entity.Property(e => e.PinCode)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.SeriCode)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.CardPrice)
                    .WithMany(p => p.CardCodes)
                    .HasForeignKey(d => d.CardPriceId)
                    .HasConstraintName("FK_CardCode_CardPrice");
            });

            modelBuilder.Entity<CardPrice>(entity =>
            {
                entity.ToTable("CardPrice");

                entity.Property(e => e.CardPriceId).HasColumnName("CardPriceID");

                entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

                entity.HasOne(d => d.Supplier)
                    .WithMany(p => p.CardPrices)
                    .HasForeignKey(d => d.SupplierId)
                    .HasConstraintName("FK_CardPrice_Supplier");
            });

            modelBuilder.Entity<Contact>(entity =>
            {
                entity.ToTable("Contact");

                entity.Property(e => e.ContactId).HasColumnName("ContactID");

                entity.Property(e => e.Email)
                    .HasMaxLength(10)
                    .IsFixedLength(true);

                entity.Property(e => e.Message)
                    .HasMaxLength(10)
                    .IsFixedLength(true);

                entity.Property(e => e.Name)
                    .HasMaxLength(10)
                    .IsFixedLength(true);

                entity.Property(e => e.Phone)
                    .HasMaxLength(10)
                    .IsFixedLength(true);

                entity.Property(e => e.Subject)
                    .HasMaxLength(10)
                    .IsFixedLength(true);
            });

            modelBuilder.Entity<HistoryRecharge>(entity =>
            {
                entity.HasKey(e => e.RechargeId);

                entity.ToTable("HistoryRecharge");

                entity.Property(e => e.RechargeId).HasColumnName("RechargeID");

                entity.Property(e => e.Time).HasPrecision(0);

                entity.Property(e => e.TransactionId)
                    .HasMaxLength(50)
                    .HasColumnName("TransactionID");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.HistoryRecharges)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK_HistoryRecharge_User");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.ToTable("Order");

                entity.Property(e => e.OrderId).HasColumnName("OrderID");

                entity.Property(e => e.CardCodeId).HasColumnName("CardCodeID");

                entity.Property(e => e.OrderCode).HasMaxLength(9);

                entity.Property(e => e.Time)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.HasOne(d => d.CardCode)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.CardCodeId)
                    .HasConstraintName("FK_Order_CardCode");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Order_User");
            });

            modelBuilder.Entity<Supplier>(entity =>
            {
                entity.ToTable("Supplier");

                entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

                entity.Property(e => e.CardTypeName).HasMaxLength(50);

                entity.Property(e => e.Image).HasMaxLength(550);

                entity.Property(e => e.SupplierName).HasMaxLength(50);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("User");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.Property(e => e.Avatar)
                    .HasMaxLength(300)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(320)
                    .IsUnicode(false);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.TimeCreated).HasColumnType("date");

                entity.Property(e => e.Username)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
