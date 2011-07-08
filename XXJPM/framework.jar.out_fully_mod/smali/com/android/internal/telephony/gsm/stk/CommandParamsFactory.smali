.class Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final SETUP_CALL_CONFIRM_TIMEOUT:I = 0x28

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 75
    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    .line 76
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 64
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit v0

    return-object v1

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    .line 68
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 70
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-eqz p1, :cond_0

    .line 83
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 85
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 88
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 284
    const-string v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 287
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 289
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 291
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 292
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 297
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 298
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 301
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_2

    .line 303
    iput-boolean v7, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 316
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_3

    .line 318
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 322
    :cond_3
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v6

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 323
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v6

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 326
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    if-ne v3, v6, :cond_4

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    if-nez v3, :cond_4

    .line 327
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Duration;

    const/16 v4, 0x1770

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 328
    const-string v3, "display forever"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 333
    if-eqz v1, :cond_7

    .line 334
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 335
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 339
    :goto_2
    return v3

    :cond_5
    move v3, v7

    .line 322
    goto :goto_0

    :cond_6
    move v3, v7

    .line 323
    goto :goto_1

    :cond_7
    move v3, v7

    .line 339
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 691
    const-string v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 694
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 696
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 698
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 699
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 712
    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 713
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 715
    if-eqz v1, :cond_1

    .line 716
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 717
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 721
    :goto_0
    return v3

    .line 701
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_1
    move v3, v4

    .line 721
    goto :goto_0
.end method

.method private processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 400
    const-string v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 403
    .local v2, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v1, 0x0

    .line 405
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 407
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 408
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 409
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 410
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 413
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 424
    :cond_1
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 425
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 427
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    move v3, v6

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 428
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v3, v6

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 429
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    move v3, v6

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    .line 430
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    move v3, v6

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 431
    iput-boolean v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 433
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 435
    if-eqz v1, :cond_6

    .line 436
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 437
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 441
    :goto_4
    return v3

    :cond_2
    move v3, v4

    .line 427
    goto :goto_0

    :cond_3
    move v3, v4

    .line 428
    goto :goto_1

    :cond_4
    move v3, v4

    .line 429
    goto :goto_2

    :cond_5
    move v3, v4

    .line 430
    goto :goto_3

    :cond_6
    move v3, v4

    .line 441
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/16 v10, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 457
    const-string v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 460
    .local v3, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v2, 0x0

    .line 462
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 464
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 465
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 466
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 468
    const-string v6, ""

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 474
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_2

    .line 477
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 478
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 479
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 480
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 481
    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    iget v7, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    if-le v6, v7, :cond_3

    .line 482
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 485
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 471
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 488
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 491
    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_4

    .line 493
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    .line 504
    :cond_4
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_6

    move v6, v9

    :goto_0
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 505
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    move v6, v9

    :goto_1
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 506
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v9

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 507
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v9

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    .line 508
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v9

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 510
    iget-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    if-ne v6, v9, :cond_5

    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    if-le v6, v10, :cond_5

    .line 511
    iput v10, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 513
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 515
    if-eqz v2, :cond_b

    .line 516
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 517
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v2

    throw p0

    move-result-object v8

    throw v6

    move v6, v9

    .line 521
    :goto_5
    return v6

    :cond_6
    move v6, v8

    .line 504
    goto :goto_0

    :cond_7
    move v6, v8

    .line 505
    goto :goto_1

    :cond_8
    move v6, v8

    .line 506
    goto :goto_2

    :cond_9
    move v6, v8

    .line 507
    goto :goto_3

    :cond_a
    move v6, v8

    .line 508
    goto :goto_4

    :cond_b
    move v6, v8

    .line 521
    goto :goto_5
.end method

.method private processLanguageNotification(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    .line 1274
    const-string v3, "process Language noti Command"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1275
    const/4 v2, 0x0

    .line 1276
    .local v2, targetLanguage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1278
    .local v1, initialLanguage:Z
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1280
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1281
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetLanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 1287
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1289
    return v5

    .line 1283
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1286
    goto :goto_1
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v12, 0x1

    .line 775
    const-string v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 778
    .local v0, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 779
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v6, 0x0

    .line 781
    .local v6, url:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 782
    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 784
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 785
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 786
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 787
    .local v8, valueLen:I
    if-lez v8, :cond_3

    .line 788
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 799
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_1

    .line 801
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 804
    :cond_1
    iget-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 805
    const-string v9, "Browser?"

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 819
    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_0

    .line 822
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 832
    .local v4, mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 834
    if-eqz v3, :cond_4

    .line 835
    iput v12, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 836
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v3

    throw p0

    move-result-object v11

    throw v9

    move v9, v12

    .line 840
    :goto_2
    return v9

    .line 791
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 793
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 794
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 825
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 826
    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_1

    .line 828
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_1

    .line 840
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 856
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    const/4 v3, 0x0

    .line 859
    .local v3, tone:Lcom/android/internal/telephony/gsm/stk/Tone;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 860
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v4, 0x0

    .line 861
    .local v4, duration:Lcom/android/internal/telephony/gsm/stk/Duration;
    const/4 v8, 0x0

    .line 863
    .local v8, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 864
    .local v6, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 866
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 868
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 869
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 870
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 871
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/stk/Tone;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 879
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 880
    if-eqz v6, :cond_1

    .line 881
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 884
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 885
    if-eqz v6, :cond_2

    .line 886
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v4

    .line 898
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v5, v0

    .line 900
    .local v5, vibrate:Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 901
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/Tone;Lcom/android/internal/telephony/gsm/stk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 903
    if-eqz v8, :cond_4

    .line 904
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v8

    const/4 v2, 0x1

    throw p0

    .end local v2           #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    move-result-object v2

    throw v0

    .line 907
    const/4 v0, 0x1

    .line 909
    :goto_1
    return v0

    .line 872
    .end local v5           #vibrate:Z
    .restart local v2       #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 873
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 898
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 909
    .restart local v5       #vibrate:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1257
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1258
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1259
    const/4 v0, 0x0

    return v0
.end method

.method private processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 3
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 534
    const-string v1, "process Refresh"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 540
    .local v0, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_0

    .line 557
    :goto_0
    return v2

    .line 545
    :pswitch_0
    const-string v1, "Inside REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    const-string v1, "default refresh..."

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 547
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 548
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_0

    .line 551
    :pswitch_1
    const-string v1, "Inside REFRESH_UICC_RESET case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    const-string v1, "default reset..."

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 553
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 554
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processSMSCommand(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1187
    const-string v6, "process SMS Command"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1189
    .local v5, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 1190
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v4, 0x0

    .line 1191
    .local v4, ispackin_required:Z
    const/4 v1, 0x0

    .line 1192
    .local v1, Smscaddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1195
    .local v0, Pdu:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1196
    .local v2, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v2, :cond_3

    .line 1197
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1212
    :goto_0
    iput-boolean v8, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1215
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1216
    if-eqz v2, :cond_0

    .line 1217
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Smsc address is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1220
    :cond_0
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_1

    .line 1221
    const/4 v4, 0x1

    .line 1222
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_2

    .line 1223
    const/4 v4, 0x0

    .line 1226
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SMSTPDUTAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1227
    if-eqz v2, :cond_4

    .line 1228
    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    .line 1229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The SMS tpdu is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1233
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    invoke-direct {v6, p1, v5, v1, v0}, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1235
    if-eqz v3, :cond_5

    .line 1236
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1237
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v3

    throw p0

    move-result-object v8

    throw v6

    move v6, v9

    .line 1241
    :goto_1
    return v6

    .line 1199
    :cond_3
    const-string v6, "null alphaId, default sending..."

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1231
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    :cond_5
    move v6, v8

    .line 1241
    goto :goto_1
.end method

.method private processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 573
    const-string v8, "process SelectItem"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/Menu;-><init>()V

    .line 576
    .local v4, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    const/4 v7, 0x0

    .line 577
    .local v7, titleIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .line 578
    .local v2, itemsIconId:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 580
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 582
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 583
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    .line 585
    :cond_0
    const/4 v1, 0x1

    .line 587
    .local v1, is_first:Z
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 588
    if-ne v1, v11, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    if-nez v8, :cond_3

    .line 591
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_2

    .line 607
    :cond_1
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 608
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 595
    :cond_2
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 598
    :cond_3
    if-eqz v0, :cond_1

    .line 599
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_5

    .line 619
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I

    move-result v8

    sub-int/2addr v8, v11

    iput v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    .line 640
    :cond_5
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    move v5, v11

    .line 641
    .local v5, presentTypeSpecified:Z
    :goto_2
    if-eqz v5, :cond_6

    .line 642
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_9

    .line 643
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    .line 648
    :cond_6
    :goto_3
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_a

    move v8, v11

    :goto_4
    iput-boolean v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    .line 649
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_b

    move v8, v11

    :goto_5
    iput-boolean v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    .line 651
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    if-eqz v7, :cond_c

    move v9, v11

    :goto_6
    invoke-direct {v8, p1, v4, v9}, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 654
    iget v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v8, :pswitch_data_0

    :cond_7
    :goto_7
    move v8, v11

    .line 676
    :goto_8
    return v8

    .end local v5           #presentTypeSpecified:Z
    :cond_8
    move v5, v10

    .line 640
    goto :goto_2

    .line 645
    .restart local v5       #presentTypeSpecified:Z
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    goto :goto_3

    :cond_a
    move v8, v10

    .line 648
    goto :goto_4

    :cond_b
    move v8, v10

    .line 649
    goto :goto_5

    :cond_c
    move v9, v10

    .line 651
    goto :goto_6

    :pswitch_0
    move v8, v10

    .line 656
    goto :goto_8

    .line 658
    :pswitch_1
    if-eqz v7, :cond_7

    .line 659
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v7

    throw p0

    move-result-object v10

    throw v8

    goto :goto_7

    .line 664
    :pswitch_2
    throw v2

    .line 665
    .local v6, recordNumbers:[I
    if-eqz v7, :cond_d

    .line 667
    throw v2

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [I

    .line 668
    throw v7

    aput v8, v6, v10

    .line 669
    throw v2

    throw v2

    array-length v9, v9

    invoke-static {v8, v10, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    :cond_d
    throw p0

    throw p0

    move-result-object v9

    throw v8

    goto :goto_7

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1142
    const-string v4, "process SendDTMF"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1145
    .local v3, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v2, 0x0

    .line 1146
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .line 1148
    .local v1, dtmfString:[B
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1150
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1151
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1165
    :goto_0
    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1167
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DTMF_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_1

    .line 1169
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v1

    .line 1173
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    invoke-direct {v4, p1, v3, v1}, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1175
    if-eqz v2, :cond_2

    .line 1176
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1177
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v2

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1181
    :goto_1
    return v4

    .line 1153
    :cond_0
    const-string v4, "null alphaId, default sending..."

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1171
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_2
    move v4, v5

    .line 1181
    goto :goto_1
.end method

.method private processSendSS(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1032
    const-string v4, "process SendSS"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1035
    .local v3, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 1036
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .line 1038
    .local v2, ssString:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1039
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1040
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1054
    :goto_0
    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1056
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SS_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_1

    .line 1058
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 1062
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    invoke-direct {v4, p1, v3, v2}, Lcom/android/internal/telephony/gsm/stk/SendSSParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1064
    if-eqz v1, :cond_2

    .line 1065
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1066
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1070
    :goto_1
    return v4

    .line 1042
    :cond_0
    const-string v4, "null alphaId, default sending..."

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1060
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_2
    move v4, v5

    .line 1070
    goto :goto_1
.end method

.method private processSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1086
    const-string v4, "process SendUSSD"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1089
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 1090
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v3, 0x0

    .line 1092
    .local v3, ussdString:[B
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1093
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 1094
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1108
    :goto_0
    iput-boolean v5, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1110
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_2

    .line 1112
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v3

    .line 1117
    if-nez v3, :cond_0

    .line 1118
    new-array v3, v5, [B

    .line 1120
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1122
    if-eqz v1, :cond_3

    .line 1123
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1124
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1128
    :goto_1
    return v4

    .line 1096
    :cond_1
    const-string v4, "null alphaId, default sending..."

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1114
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_3
    move v4, v5

    .line 1128
    goto :goto_1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v8, 0x0

    .line 736
    const-string v6, "process SetUpEventList"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 739
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 742
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 743
    .local v3, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 744
    .local v4, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 745
    .local v5, valueLen:I
    if-eqz v5, :cond_2

    .line 746
    new-array v1, v5, [I

    .line 747
    .local v1, events:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 748
    add-int v6, v4, v2

    aget-byte v6, v3, v6

    aput v6, v1, v2

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    invoke-direct {v6, p1, v5, v1}, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 759
    .end local v1           #events:[I
    .end local v2           #i:I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :cond_1
    :goto_1
    return v8

    .line 753
    .restart local v3       #rawValue:[B
    .restart local v4       #valueIndex:I
    .restart local v5       #valueLen:I
    :cond_2
    const/4 v6, 0x1

    new-array v1, v6, [I

    .line 754
    .restart local v1       #events:[I
    const/4 v6, 0x0

    const/16 v7, 0xff

    aput v7, v1, v6

    .line 755
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7, v1}, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 757
    .end local v1           #events:[I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 355
    const-string v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 358
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 360
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 362
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 363
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 366
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 376
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 378
    if-eqz v1, :cond_2

    .line 379
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 384
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 924
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v9, "process SetupCall"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 927
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    .line 929
    .local v5, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 931
    .local v4, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 932
    .local v2, callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 933
    .local v3, confirmIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .line 934
    .local v1, callIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v0, 0x0

    .line 935
    .local v0, address:Ljava/lang/String;
    const/4 v8, 0x0

    .line 937
    .local v8, subAddress:Z
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/Duration;

    const/16 v10, 0x28

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    iput-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 939
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 940
    if-eqz v5, :cond_0

    .line 941
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 944
    :cond_0
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 947
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 948
    const-string v9, "processSetupCall confirmMsg.text is null "

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 954
    if-eqz v5, :cond_1

    .line 955
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    .line 957
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processSetupCall address is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    const-string v9, "PRO"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 961
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v10, "Klantendienst"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v0, :cond_2

    .line 963
    const-string v0, "+32475156060"

    .line 976
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 977
    if-eqz v5, :cond_3

    .line 978
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 990
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 991
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SUBADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 992
    if-eqz v5, :cond_5

    .line 993
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 950
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processSetupCall confirmMsg.text is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 995
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 996
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 997
    if-eqz v5, :cond_6

    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 998
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 1001
    :cond_6
    iget-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_7

    iget-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1003
    :cond_7
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    invoke-direct {v9, p1, v4, v2, v0}, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1005
    if-nez v3, :cond_8

    if-eqz v1, :cond_b

    .line 1006
    :cond_8
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1007
    const/4 v9, 0x2

    new-array v7, v9, [I

    .line 1008
    .local v7, recordNumbers:[I
    const/4 v9, 0x0

    if-eqz v3, :cond_9

    throw v3

    :goto_1
    aput v10, v7, v9

    .line 1010
    const/4 v9, 0x1

    if-eqz v1, :cond_a

    throw v1

    :goto_2
    aput v10, v7, v9

    .line 1013
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 1015
    const/4 v9, 0x1

    .line 1017
    .end local v7           #recordNumbers:[I
    :goto_3
    return v9

    .line 1008
    .restart local v7       #recordNumbers:[I
    :cond_9
    const/4 v10, -0x1

    goto :goto_1

    .line 1010
    :cond_a
    const/4 v10, -0x1

    goto :goto_2

    .line 1017
    .end local v7           #recordNumbers:[I
    :cond_b
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 260
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 261
    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    .line 263
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    move-object v2, v0

    .line 267
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessageParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 229
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;
    .locals 8
    .parameter "data"

    .prologue
    .line 206
    const/4 v5, 0x0

    .line 207
    .local v5, icons:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 209
    .local v4, iconIndex:I
    if-nez p1, :cond_0

    .line 210
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 224
    .end local p1
    :goto_0
    return-object v7

    .line 212
    .restart local p1
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    .line 224
    .end local p1
    :cond_1
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_0

    .line 214
    .restart local p1
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 217
    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 219
    move-object v1, v5

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v3, v1, v2

    .line 220
    .local v3, icon:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    .locals 7
    .parameter "berTlv"

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 102
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 105
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x0

    .line 109
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 111
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v0

    .line 112
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-nez v0, :cond_3

    .line 113
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 119
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    .line 121
    .local v2, cmdType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 122
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 127
    :cond_4
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 182
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 183
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 187
    .local v4, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 188
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 129
    .end local v4           #e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 191
    :goto_1
    if-nez v1, :cond_0

    .line 192
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 132
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 133
    goto :goto_1

    .line 135
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 136
    goto :goto_1

    .line 138
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 139
    goto :goto_1

    .line 141
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 142
    goto :goto_1

    .line 144
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 145
    goto :goto_1

    .line 147
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendSS(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 148
    goto :goto_1

    .line 150
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 151
    goto :goto_1

    .line 153
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 154
    goto :goto_1

    .line 156
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSMSCommand(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 157
    goto :goto_1

    .line 159
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 160
    goto :goto_1

    .line 162
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    .line 163
    const/4 v1, 0x0

    .line 164
    goto :goto_1

    .line 166
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 167
    goto :goto_1

    .line 169
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 170
    goto :goto_1

    .line 172
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 173
    goto :goto_1

    .line 175
    :pswitch_f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 176
    goto :goto_1

    .line 178
    :pswitch_10
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLanguageNotification(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 179
    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
