using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Q3.Models
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

        public virtual DbSet<CardType> CardTypes { get; set; }
        public virtual DbSet<Cart> Carts { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<HistoryRecharge> HistoryRecharges { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Price> Prices { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("server=localhost;database=ThanhToan247;Integrated security = true; TrustServerCertificate=true");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<CardType>(entity =>
            {
                entity.ToTable("CardType");

                entity.Property(e => e.CardTypeId)
                    .ValueGeneratedNever()
                    .HasColumnName("CardTypeID");

                entity.Property(e => e.CardTypeName)
                    .HasMaxLength(50)
                    .HasColumnName("cardTypeName");
            });

            modelBuilder.Entity<Cart>(entity =>
            {
                entity.ToTable("Cart");

                entity.Property(e => e.CartId).HasColumnName("CartID");

                entity.Property(e => e.PriceId).HasColumnName("PriceID");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.HasOne(d => d.Price)
                    .WithMany(p => p.Carts)
                    .HasForeignKey(d => d.PriceId)
                    .HasConstraintName("FK_Cart_Price");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Carts)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK_Cart_User");
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

                entity.Property(e => e.OrderCode).HasMaxLength(9);

                entity.Property(e => e.PriceId).HasColumnName("PriceID");

                entity.Property(e => e.Time)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.HasOne(d => d.Price)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.PriceId)
                    .HasConstraintName("FK_Order_Price");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK_Order_User1");
            });

            modelBuilder.Entity<OrderDetail>(entity =>
            {
                entity.HasKey(e => e.OrderDetailsId)
                    .HasName("PK_OrderDetails_1");

                entity.Property(e => e.OrderDetailsId).HasColumnName("OrderDetailsID");

                entity.Property(e => e.OrderId).HasColumnName("OrderID");

                entity.HasOne(d => d.Order)
                    .WithMany(p => p.OrderDetails)
                    .HasForeignKey(d => d.OrderId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_OrderDetails_Order");
            });

            modelBuilder.Entity<Price>(entity =>
            {
                entity.ToTable("Price");

                entity.Property(e => e.PriceId)
                    .ValueGeneratedNever()
                    .HasColumnName("PriceID");

                entity.Property(e => e.Price1).HasColumnName("Price");

                entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

                entity.HasOne(d => d.Supplier)
                    .WithMany(p => p.Prices)
                    .HasForeignKey(d => d.SupplierId)
                    .HasConstraintName("FK_Price_Supplier");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("Product");

                entity.Property(e => e.ProductId).HasColumnName("ProductID");

                entity.Property(e => e.PinCode)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PriceId).HasColumnName("PriceID");

                entity.Property(e => e.SeriCode)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.Price)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.PriceId)
                    .HasConstraintName("FK_Product_Price");
            });

            modelBuilder.Entity<Supplier>(entity =>
            {
                entity.ToTable("Supplier");

                entity.Property(e => e.SupplierId).HasColumnName("SupplierID");

                entity.Property(e => e.CardTypeId).HasColumnName("CardTypeID");

                entity.Property(e => e.Image).HasMaxLength(550);

                entity.Property(e => e.SupplierName)
                    .HasMaxLength(50)
                    .HasColumnName("supplierName");

                entity.HasOne(d => d.CardType)
                    .WithMany(p => p.Suppliers)
                    .HasForeignKey(d => d.CardTypeId)
                    .HasConstraintName("FK_Supplier_CardType");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("User");

                entity.HasIndex(e => e.Username, "IX_User")
                    .IsUnique();

                entity.Property(e => e.UserId).HasColumnName("UserID");

                entity.Property(e => e.Avatar)
                    .IsRequired()
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
