﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Mix.Services.Messenger.Models.Data;

namespace Mix.Services.Messenger.Migrations
{
    [DbContext(typeof(MixChatServiceContext))]
    partial class MixChatServiceContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.4-rtm-31024");

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerHubRoom", b =>
                {
                    b.Property<Guid>("Id");

                    b.Property<string>("Avatar")
                        .HasMaxLength(250);

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime");

                    b.Property<string>("Description")
                        .HasColumnType("ntext");

                    b.Property<string>("HostId")
                        .HasMaxLength(128);

                    b.Property<bool>("IsOpen");

                    b.Property<DateTime?>("LastModified")
                        .HasColumnType("datetime");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<int?>("TeamId");

                    b.Property<string>("Title")
                        .HasMaxLength(250);

                    b.HasKey("Id");

                    b.ToTable("mix_messenger_hub_room");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerMessage", b =>
                {
                    b.Property<Guid>("Id");

                    b.Property<string>("Content")
                        .HasColumnType("ntext");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime");

                    b.Property<Guid?>("RoomId");

                    b.Property<int?>("TeamId");

                    b.Property<string>("UserId")
                        .HasMaxLength(50);

                    b.HasKey("Id");

                    b.HasIndex("RoomId")
                        .HasName("IX_messenger_message_RoomId");

                    b.HasIndex("TeamId")
                        .HasName("IX_messenger_message_TeamId");

                    b.HasIndex("UserId")
                        .HasName("IX_messenger_message_UserId");

                    b.ToTable("mix_messenger_message");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerNavRoomUser", b =>
                {
                    b.Property<Guid>("RoomId");

                    b.Property<string>("UserId")
                        .HasMaxLength(50);

                    b.Property<DateTime>("JoinedDate")
                        .HasColumnType("datetime");

                    b.HasKey("RoomId", "UserId");

                    b.HasIndex("UserId")
                        .HasName("IX_messenger_nav_room_user_UserId");

                    b.ToTable("mix_messenger_nav_room_user");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerNavTeamUser", b =>
                {
                    b.Property<int>("TeamId");

                    b.Property<string>("UserId")
                        .HasMaxLength(50);

                    b.Property<DateTime>("JoinedDate")
                        .HasColumnType("datetime");

                    b.Property<DateTime?>("LastModified")
                        .HasColumnType("datetime");

                    b.Property<int>("Status");

                    b.HasKey("TeamId", "UserId");

                    b.HasIndex("UserId")
                        .HasName("IX_messenger_nav_team_user_UserId");

                    b.ToTable("mix_messenger_nav_team_user");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerTeam", b =>
                {
                    b.Property<int>("Id");

                    b.Property<string>("Avatar")
                        .HasMaxLength(250);

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime");

                    b.Property<string>("HostId")
                        .HasMaxLength(128);

                    b.Property<bool?>("IsOpen")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValueSql("((1))");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(250);

                    b.Property<int>("Type");

                    b.HasKey("Id");

                    b.ToTable("mix_messenger_team");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerUser", b =>
                {
                    b.Property<string>("Id")
                        .HasMaxLength(50);

                    b.Property<string>("Avatar")
                        .HasMaxLength(250);

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime");

                    b.Property<string>("FacebookId")
                        .HasMaxLength(50);

                    b.Property<DateTime?>("LastModified")
                        .HasColumnType("datetime");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(250);

                    b.Property<int>("Status")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValueSql("((1))");

                    b.HasKey("Id");

                    b.ToTable("mix_messenger_user");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerUserDevice", b =>
                {
                    b.Property<string>("UserId")
                        .HasMaxLength(50);

                    b.Property<string>("DeviceId")
                        .HasMaxLength(50);

                    b.Property<string>("ConnectionId")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<DateTime?>("EndDate")
                        .HasColumnType("datetime");

                    b.Property<DateTime>("StartDate")
                        .HasColumnType("datetime");

                    b.Property<int>("Status");

                    b.HasKey("UserId", "DeviceId");

                    b.ToTable("mix_messenger_user_device");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerMessage", b =>
                {
                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerHubRoom", "Room")
                        .WithMany("MixMessengerMessage")
                        .HasForeignKey("RoomId")
                        .HasConstraintName("FK_messenger_message_messenger_hub_room");

                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerTeam", "Team")
                        .WithMany("MixMessengerMessage")
                        .HasForeignKey("TeamId")
                        .HasConstraintName("FK_messenger_message_messenger_team");

                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerUser", "User")
                        .WithMany("MixMessengerMessage")
                        .HasForeignKey("UserId")
                        .HasConstraintName("FK_messenger_message_messenger_user");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerNavRoomUser", b =>
                {
                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerHubRoom", "Room")
                        .WithMany("MixMessengerNavRoomUser")
                        .HasForeignKey("RoomId")
                        .HasConstraintName("FK_messenger_nav_room_user_messenger_hub_room");

                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerUser", "User")
                        .WithMany("MixMessengerNavRoomUser")
                        .HasForeignKey("UserId")
                        .HasConstraintName("FK_messenger_nav_room_user_messenger_user");
                });

            modelBuilder.Entity("Mix.Services.Messenger.Models.Data.MixMessengerNavTeamUser", b =>
                {
                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerTeam", "Team")
                        .WithMany("MixMessengerNavTeamUser")
                        .HasForeignKey("TeamId")
                        .HasConstraintName("FK_messenger_nav_team_user_messenger_team");

                    b.HasOne("Mix.Services.Messenger.Models.Data.MixMessengerUser", "User")
                        .WithMany("MixMessengerNavTeamUser")
                        .HasForeignKey("UserId")
                        .HasConstraintName("FK_messenger_nav_team_user_messenger_user");
                });
#pragma warning restore 612, 618
        }
    }
}
