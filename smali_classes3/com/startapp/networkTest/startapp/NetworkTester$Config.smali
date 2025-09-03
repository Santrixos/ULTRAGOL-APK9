.class public final Lcom/startapp/networkTest/startapp/NetworkTester$Config;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/networkTest/startapp/NetworkTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public CONNECTIVITY_TEST_CDNCONFIG_URL:Ljava/lang/String;

.field public CONNECTIVITY_TEST_ENABLED:Z

.field public CONNECTIVITY_TEST_FILENAME:Ljava/lang/String;

.field public CONNECTIVITY_TEST_HOSTNAME:Ljava/lang/String;

.field public CT_COLLECT_CELLINFO:Z

.field public FOREGROUND_TEST_CT_ENABLED:Z

.field public FOREGROUND_TEST_CT_MIN_INTERVAL:J

.field public FOREGROUND_TEST_CT_SCHEDULE_INTERVAL:J

.field public FOREGROUND_TEST_NIR_ENABLED:Z

.field public GEOIP_URL:Ljava/lang/String;

.field public NIR_COLLECT_CELLINFO:Z

.field public NIR_COLLECT_CELLINFO_THRESHOLD:I

.field public PROJECT_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "20050"

    .line 2
    iput-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->PROJECT_ID:Ljava/lang/String;

    const-string v0, "d2to8y50b3n6dq.cloudfront.net"

    .line 3
    iput-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_HOSTNAME:Ljava/lang/String;

    const-string v0, "/favicon.ico"

    .line 4
    iput-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_FILENAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_ENABLED:Z

    .line 6
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->NIR_COLLECT_CELLINFO:Z

    .line 7
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CT_COLLECT_CELLINFO:Z

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->NIR_COLLECT_CELLINFO_THRESHOLD:I

    const-string v1, "https://d2to8y50b3n6dq.cloudfront.net/truststores/[PROJECTID]/cdnconfig.zip"

    .line 9
    iput-object v1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_CDNCONFIG_URL:Ljava/lang/String;

    const-string v1, "https://geoip.api.c0nnectthed0ts.com/geoip/"

    .line 10
    iput-object v1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->GEOIP_URL:Ljava/lang/String;

    const-wide/32 v1, 0x493e0

    .line 11
    iput-wide v1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->FOREGROUND_TEST_CT_SCHEDULE_INTERVAL:J

    const-wide/32 v1, 0x2bf20

    .line 12
    iput-wide v1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->FOREGROUND_TEST_CT_MIN_INTERVAL:J

    .line 13
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->FOREGROUND_TEST_CT_ENABLED:Z

    .line 14
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->FOREGROUND_TEST_NIR_ENABLED:Z

    return-void
.end method
