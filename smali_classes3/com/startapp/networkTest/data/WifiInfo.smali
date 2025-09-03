.class public Lcom/startapp/networkTest/data/WifiInfo;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7091151cafc7bd8fL


# instance fields
.field public HotspotState:Lcom/startapp/networkTest/enums/HotspotStates;

.field public MissingPermission:Z

.field public WifiAuthAlgorithm:Lcom/startapp/networkTest/enums/wifi/WifiAuthAlgorithms;

.field public WifiBSSID:Ljava/lang/String;

.field public transient WifiBSSID_Full:Ljava/lang/String;

.field public WifiDetailedState:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public WifiFrequency:I

.field public WifiGroupCipher:Lcom/startapp/networkTest/enums/wifi/WifiGroupCiphers;

.field public WifiKeyManagement:Lcom/startapp/networkTest/enums/wifi/WifiKeyManagements;

.field public WifiLinkQuality:I

.field public WifiLinkSpeed:Ljava/lang/String;

.field public transient WifiLinkSpeedBps:J

.field public transient WifiMacAddress:Ljava/lang/String;

.field public WifiPairwiseCipher:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

.field public WifiProtocol:Lcom/startapp/networkTest/enums/wifi/WifiProtocols;

.field public WifiRxLev:I

.field public WifiSSID:Ljava/lang/String;

.field public transient WifiSSID_Full:Ljava/lang/String;

.field public WifiState:Lcom/startapp/networkTest/enums/WifiStates;

.field public WifiSupplicantState:Lcom/startapp/networkTest/enums/wifi/WifiSupplicantStates;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/startapp/networkTest/enums/WifiStates;->a:Lcom/startapp/networkTest/enums/WifiStates;

    iput-object v0, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiState:Lcom/startapp/networkTest/enums/WifiStates;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiSSID:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiBSSID:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiLinkSpeed:Ljava/lang/String;

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiLinkQuality:I

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiFrequency:I

    .line 61
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiKeyManagements;->a:Lcom/startapp/networkTest/enums/wifi/WifiKeyManagements;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiKeyManagement:Lcom/startapp/networkTest/enums/wifi/WifiKeyManagements;

    .line 66
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->a:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiPairwiseCipher:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    .line 71
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiAuthAlgorithms;->a:Lcom/startapp/networkTest/enums/wifi/WifiAuthAlgorithms;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiAuthAlgorithm:Lcom/startapp/networkTest/enums/wifi/WifiAuthAlgorithms;

    .line 76
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiGroupCiphers;->a:Lcom/startapp/networkTest/enums/wifi/WifiGroupCiphers;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiGroupCipher:Lcom/startapp/networkTest/enums/wifi/WifiGroupCiphers;

    .line 81
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiProtocols;->a:Lcom/startapp/networkTest/enums/wifi/WifiProtocols;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiProtocol:Lcom/startapp/networkTest/enums/wifi/WifiProtocols;

    .line 86
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiSupplicantStates;->a:Lcom/startapp/networkTest/enums/wifi/WifiSupplicantStates;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiSupplicantState:Lcom/startapp/networkTest/enums/wifi/WifiSupplicantStates;

    .line 91
    sget-object v2, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->a:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiDetailedState:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 96
    sget-object v2, Lcom/startapp/networkTest/enums/HotspotStates;->a:Lcom/startapp/networkTest/enums/HotspotStates;

    iput-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->HotspotState:Lcom/startapp/networkTest/enums/HotspotStates;

    .line 101
    iput-boolean v1, p0, Lcom/startapp/networkTest/data/WifiInfo;->MissingPermission:Z

    .line 106
    iput-object v0, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiMacAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiState: "

    .line 3
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiState:Lcom/startapp/networkTest/enums/WifiStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDetailedState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiDetailedState:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiSupplicantState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiSupplicantState:Lcom/startapp/networkTest/enums/wifi/WifiSupplicantStates;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiProtocol: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiProtocol:Lcom/startapp/networkTest/enums/wifi/WifiProtocols;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiGroupCipher: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiGroupCipher:Lcom/startapp/networkTest/enums/wifi/WifiGroupCiphers;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiAuthAlgorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiAuthAlgorithm:Lcom/startapp/networkTest/enums/wifi/WifiAuthAlgorithms;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiPairwiseCipher: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiPairwiseCipher:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiFrequency: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiFrequency:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiLinkQuality: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiLinkQuality:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiLinkSpeed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiLinkSpeed:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiRxLev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiRxLev:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiBSSID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiBSSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiSSID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiMacAddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/networkTest/data/WifiInfo;->WifiMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
