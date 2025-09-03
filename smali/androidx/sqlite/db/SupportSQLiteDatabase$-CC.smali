.class public final synthetic Landroidx/sqlite/db/SupportSQLiteDatabase$-CC;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$execPerConnectionSQL(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 252
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public static $default$isExecPerConnectionSQLSupported(Landroidx/sqlite/db/SupportSQLiteDatabase;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 0
    const/4 v0, 0x0

    return v0
.end method
