.class public Lcom/startapp/j7;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/String;)Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;
    .locals 7

    .line 1
    new-instance v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    const-string v4, "transportType"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/startapp/j7;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->TransportType:Ljava/lang/String;

    goto/16 :goto_b

    :cond_0
    const-string v4, "domain"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1
    const-string v4, "regState"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->RegState:Ljava/lang/String;

    goto/16 :goto_b

    :cond_2
    const-string v4, "accessNetworkTechnology"

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->NetworkTechnology:Ljava/lang/String;

    goto/16 :goto_b

    :cond_3
    const-string v4, "reasonForDenial"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->ReasonForDenial:Ljava/lang/String;

    goto/16 :goto_b

    :cond_4
    const-string v4, "emergencyEnabled"

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "true"

    if-eqz v4, :cond_5

    .line 22
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->EmergencyEnabled:Z

    goto/16 :goto_b

    :cond_5
    const-string v4, "mIsUsingCarrierAggregation"

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_1
    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto/16 :goto_b

    :cond_7
    const-string v4, "cellIdentity"

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v6, ""

    if-eqz v4, :cond_8

    .line 28
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CellTechnology:Ljava/lang/String;

    const-string v4, "CellIdentity"

    .line 29
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CellTechnology:Ljava/lang/String;

    goto/16 :goto_b

    :cond_8
    const-string v4, "mCid"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "mCi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "mNetworkId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "mNci"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_a

    :cond_9
    const-string v4, "mLac"

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "mTac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "mSystemId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_9

    :cond_a
    const-string v4, "mBsic"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "mPsc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "mPci"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "mBasestationId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_7

    :cond_b
    const-string v4, "mArfcn"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "mUarfcn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "mEarfcn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "mNrArfcn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_6

    :cond_c
    const-string v4, "mBandwidth"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 59
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Bandwidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v3

    .line 63
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_d
    const-string v4, "mMcc"

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 67
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Mcc:Ljava/lang/String;

    goto/16 :goto_b

    :cond_e
    const-string v4, "mMnc"

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 70
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Mnc:Ljava/lang/String;

    goto/16 :goto_b

    :cond_f
    const-string v4, "mAlphaLong"

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 73
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->OperatorLong:Ljava/lang/String;

    goto/16 :goto_b

    :cond_10
    const-string v4, "mAlphaShort"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 76
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->OperatorShort:Ljava/lang/String;

    goto/16 :goto_b

    :cond_11
    const-string v4, "mMaxDataCalls"

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 79
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->MaxDataCalls:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_b

    :catchall_1
    move-exception v3

    .line 83
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_12
    const-string v4, "availableServices"

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 87
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->AvailableServices:Ljava/lang/String;

    goto/16 :goto_b

    :cond_13
    const-string v4, "nrState"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "nrStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_5

    :cond_14
    const-string v4, "isDcNrRestricted"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 93
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_2

    :cond_15
    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_2
    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->DcNrRestricted:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto/16 :goto_b

    :cond_16
    const-string v4, "isNrAvailable"

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 96
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_3

    :cond_17
    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_3
    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->NrAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto/16 :goto_b

    :cond_18
    const-string v4, "isEnDcAvailable"

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 99
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_4

    :cond_19
    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_4
    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->EnDcAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_b

    .line 100
    :cond_1a
    :goto_5
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->NrState:Ljava/lang/String;

    goto :goto_b

    .line 101
    :cond_1b
    :goto_6
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Arfcn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v3

    .line 105
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 106
    :cond_1c
    :goto_7
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0x"

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1d

    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 110
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v3

    .line 112
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_1d
    move-object v6, v3

    .line 116
    :goto_8
    iput-object v6, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Pci:Ljava/lang/String;

    goto :goto_b

    .line 117
    :cond_1e
    :goto_9
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Tac:Ljava/lang/String;

    goto :goto_b

    .line 118
    :cond_1f
    :goto_a
    invoke-static {v3}, Lcom/startapp/j7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CellId:Ljava/lang/String;

    :cond_20
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_21
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "isDcNrRestricted = false"

    const-string v1, "isDcNrRestricted=false"

    .line 119
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isDcNrRestricted = true"

    const-string v1, "isDcNrRestricted=true"

    .line 120
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isNrAvailable = false"

    const-string v1, "isNrAvailable=false"

    .line 121
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isNrAvailable = true"

    const-string v1, "isNrAvailable=true"

    .line 122
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isEnDcAvailable = false"

    const-string v1, "isEnDcAvailable=false"

    .line 123
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isEnDcAvailable = true"

    const-string v1, "isEnDcAvailable=true"

    .line 124
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mIsUsingCarrierAggregation = false"

    const-string v1, "mIsUsingCarrierAggregation=false"

    .line 125
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mIsUsingCarrierAggregation = true"

    const-string v1, "mIsUsingCarrierAggregation=true"

    .line 126
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "NetworkRegistrationState"

    const-string v1, " "

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkRegistrationInfo"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "}"

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "{"

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v2, ""

    .line 5
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " +"

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;
    .locals 7

    const-string v0, ""

    const-string v1, "["

    const-string v2, "]"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "mNetworkRegistrationStates="

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const-string v4, "mNetworkRegistrationInfos="

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    :cond_0
    if-ne v5, v6, :cond_1

    new-array p0, v3, [Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v4, "\\[\\w@"

    const-string v5, "@"

    .line 18
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    :goto_0
    if-eq v5, v6, :cond_2

    if-le v4, v5, :cond_2

    const-string v4, "\\["

    .line 23
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ", "

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 34
    array-length v0, p0

    new-array v0, v0, [Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    const/4 v1, 0x0

    .line 36
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 38
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/startapp/j7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 40
    invoke-static {v2}, Lcom/startapp/j7;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/startapp/j7;->a([Ljava/lang/String;)Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    new-array p0, v3, [Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "="

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "WLAN"

    return-object p0

    :cond_1
    const-string p0, "WWAN"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    return-object p0
.end method
