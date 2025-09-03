.class Lcom/app/thestream/databases/dao/DAO_Impl$3;
.super Landroidx/room/SharedSQLiteStatement;
.source "DAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/databases/dao/DAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/databases/dao/DAO_Impl;


# direct methods
.method constructor <init>(Lcom/app/thestream/databases/dao/DAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl$3;->this$0:Lcom/app/thestream/databases/dao/DAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM channel"

    return-object v0
.end method
