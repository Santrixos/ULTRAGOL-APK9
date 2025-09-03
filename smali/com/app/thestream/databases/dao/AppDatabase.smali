.class public abstract Lcom/app/thestream/databases/dao/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.java"


# static fields
.field private static INSTANCE:Lcom/app/thestream/databases/dao/AppDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/app/thestream/databases/dao/AppDatabase;->INSTANCE:Lcom/app/thestream/databases/dao/AppDatabase;

    return-void
.end method

.method public static getDatabase(Landroid/content/Context;)Lcom/app/thestream/databases/dao/AppDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/app/thestream/databases/dao/AppDatabase;->INSTANCE:Lcom/app/thestream/databases/dao/AppDatabase;

    if-nez v0, :cond_0

    .line 17
    const-class v0, Lcom/app/thestream/databases/dao/AppDatabase;

    const-string v1, "the_stream.database"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/app/thestream/databases/dao/AppDatabase;

    sput-object p0, Lcom/app/thestream/databases/dao/AppDatabase;->INSTANCE:Lcom/app/thestream/databases/dao/AppDatabase;

    .line 22
    :cond_0
    sget-object p0, Lcom/app/thestream/databases/dao/AppDatabase;->INSTANCE:Lcom/app/thestream/databases/dao/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public abstract get()Lcom/app/thestream/databases/dao/DAO;
.end method
