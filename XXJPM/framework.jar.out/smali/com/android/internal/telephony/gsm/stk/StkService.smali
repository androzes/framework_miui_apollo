.class public Lcom/android/internal/telephony/gsm/stk/StkService;
.super Landroid/os/Handler;
.source "StkService.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/stk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_USSD_COMPLETE:I = 0x7

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0xd

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_PHONE_DISCONNECT:I = 0xf

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RELEASE_COMPLETE_MESSAGE:I = 0x8

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DTMF_PAUSE:I = 0x10

.field static final MSG_ID_SEND_DTMF_RESULT:I = 0xb

.field static final MSG_ID_SEND_SMS_RESULT:I = 0xc

.field static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SIM_LOADED:I = 0x14

.field static final MSG_ID_TIMEOUT:I = 0x9

.field private static final NOT_IN_USE:I = 0x0

.field static final STK_REFRESH:Ljava/lang/String; = "default refresh..."

.field static final STK_RESET:Ljava/lang/String; = "default reset..."

.field static final STK_SENDING:Ljava/lang/String; = "null alphaId, default sending..."

.field private static final WAITING_RELEASE_COMPLETE:I = 0x1

.field private static final WAITING_RELEASE_COMPLETE_TIME:I = 0x7530

.field static final WAITING_SEND_DTMF:I = 0x5

.field static final WAITING_SEND_DTMF_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL:I = 0x4

.field private static final WAITING_SETUP_CALL_HOLD_RESULT:I = 0x3

.field private static final WAITING_SETUP_CALL_HOLD_RESULT_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL_TIME:I = 0x2710

.field private static final WAITING_SMS_RESULT:I = 0x2

.field private static final WAITING_SMS_RESULT_TIME:I = 0xea60

.field private static final WAKE_LOCK_TIMEOUT:I = 0xfde8

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

.field private mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSendTerminalResponseExpectedByCallSetup:Z

.field private mSetupCallDisc:Z

.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field private mTimeoutDest:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 255
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 257
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 258
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    .line 278
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    .line 305
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 307
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    .line 308
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    .line 309
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 320
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 326
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    .line 327
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 328
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 330
    invoke-static {p0, p4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->createWakelock()V

    .line 351
    return-void
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    .line 422
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMessages(I)V

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 424
    return-void
.end method

.method private createWakelock()V
    .locals 3

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1716
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1717
    return-void
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 1139
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1142
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 1143
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1146
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1149
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1150
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1151
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1152
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1155
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1156
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1157
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1158
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1159
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1162
    if-eqz p4, :cond_0

    .line 1163
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 1164
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1168
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1171
    .local v7, rawData:[B
    array-length v9, v7

    const/4 v10, 0x2

    sub-int v5, v9, v10

    .line 1172
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 1174
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1177
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .locals 7

    .prologue
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    .line 1210
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;
    .locals 9
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    .line 1192
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    if-nez v0, :cond_2

    .line 1193
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 1195
    :cond_0
    const/4 v0, 0x0

    .line 1201
    :goto_0
    return-object v0

    .line 1197
    :cond_1
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "Stk Telephony service"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v8, thread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 1199
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 1201
    .end local v8           #thread:Landroid/os/HandlerThread;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    goto :goto_0
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .locals 24
    .parameter "callcontrol_result"

    .prologue
    .line 591
    const/4 v15, 0x0

    .line 592
    .local v15, call_type:I
    const/4 v14, 0x0

    .line 593
    .local v14, callControlResultCode:I
    const/4 v12, 0x0

    .line 594
    .local v12, alphaidpresent:Z
    const/4 v11, 0x0

    .line 595
    .local v11, alphaid_len:I
    const/16 v4, 0x40

    new-array v10, v4, [B

    .line 596
    .local v10, alpha_id:[B
    const/16 v18, 0x0

    .line 597
    .local v18, length_of_mod:B
    const-string v23, ""

    .line 598
    .local v23, voicecall_ss_modified_address:Ljava/lang/String;
    const/16 v21, 0x0

    .line 599
    .local v21, modified_ussd_string:Ljava/lang/String;
    const/16 v20, 0x0

    .line 601
    .local v20, modified_sms_dest_address:Ljava/lang/String;
    const/4 v13, 0x0

    .line 603
    .local v13, callControlResult:Ljava/lang/String;
    const/16 v22, 0x0

    .line 605
    .local v22, rawData:[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v22

    .line 608
    const/4 v4, 0x0

    aget-byte v4, v22, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    .line 609
    const/4 v4, 0x1

    aget-byte v4, v22, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    .line 612
    const/4 v4, 0x1

    aget-byte v14, v22, v4

    .line 613
    const/4 v4, 0x0

    aget-byte v15, v22, v4

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The call control result by SIM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const/4 v4, 0x2

    :try_start_0
    aget-byte v4, v22, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 618
    const/4 v12, 0x1

    .line 621
    :goto_0
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    const/16 v4, 0x40

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_1

    .line 623
    add-int/lit8 v4, v17, 0x4

    aget-byte v4, v22, v4

    aput-byte v4, v10, v17
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 619
    .end local v17           #i:I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v4

    .line 629
    :cond_1
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_8

    .line 632
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$CallType:[I

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 722
    :goto_2
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v4, v5, :cond_2

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_3

    .line 723
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 738
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_9

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_9

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 744
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 745
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 759
    :cond_4
    :goto_4
    return-void

    .line 637
    :pswitch_0
    const/16 v4, 0x46

    :try_start_1
    aget-byte v4, v22, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 640
    :cond_5
    const/16 v4, 0x48

    aget-byte v18, v22, v4

    .line 641
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 642
    add-int/lit8 v4, v17, 0x49

    aget-byte v4, v22, v4

    packed-switch v4, :pswitch_data_1

    .line 641
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 644
    :pswitch_1
    add-int/lit8 v4, v17, 0x49

    aget-byte v5, v22, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v17, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 646
    goto :goto_6

    .line 648
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 649
    goto :goto_6

    .line 651
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    .line 652
    goto :goto_6

    .line 657
    .end local v17           #i:I
    :catch_1
    move-exception v4

    .line 661
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Modified number by SIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10403a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 663
    .local v19, message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 665
    goto/16 :goto_2

    .line 668
    .end local v19           #message:Ljava/lang/CharSequence;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10403a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 669
    .restart local v19       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 671
    goto/16 :goto_2

    .line 674
    .end local v19           #message:Ljava/lang/CharSequence;
    :pswitch_5
    const/16 v4, 0x48

    aget-byte v18, v22, v4

    .line 675
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 676
    add-int/lit8 v4, v17, 0x49

    aget-byte v4, v22, v4

    packed-switch v4, :pswitch_data_2

    .line 675
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 678
    :pswitch_6
    add-int/lit8 v4, v17, 0x49

    aget-byte v5, v22, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v17, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 680
    goto :goto_8

    .line 682
    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 683
    goto :goto_8

    .line 685
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 686
    goto :goto_8

    .line 692
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10403a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 701
    .restart local v19       #message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 693
    .end local v19           #message:Ljava/lang/CharSequence;
    :catch_2
    move-exception v4

    move-object/from16 v16, v4

    .line 695
    .local v16, e:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "fail to send SS"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_4

    .line 727
    .end local v16           #e:Lcom/android/internal/telephony/CallStateException;
    .end local v17           #i:I
    :cond_8
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_3

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10403a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 730
    .restart local v19       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 747
    .end local v19           #message:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_4

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_4

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    if-eqz v4, :cond_a

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 755
    :goto_9
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    goto/16 :goto_4

    .line 753
    :cond_a
    const-string v4, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 632
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 642
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 676
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 22
    .parameter "resMsg"

    .prologue
    .line 1536
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1539
    :cond_1
    const/4 v8, 0x0

    .line 1540
    .local v8, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v15, 0x0

    .line 1541
    .local v15, helpRequired:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v4

    .line 1545
    .local v4, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    const/4 v11, 0x0

    .line 1547
    .local v11, calldisabledNoti:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1549
    :pswitch_0
    const/4 v15, 0x1

    .line 1561
    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v5, v4, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    .line 1708
    :cond_2
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    if-nez v3, :cond_11

    .line 1709
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 1563
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    move v15, v3

    .line 1564
    :goto_2
    const-string v3, "gsm.STK_USER_SESSION"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMenuSelection(IZ)V

    goto :goto_0

    .line 1563
    :cond_3
    const/4 v3, 0x0

    move v15, v3

    goto :goto_2

    .line 1568
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_4
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;-><init>(I)V

    .line 1569
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    .line 1572
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v16

    .line 1573
    .local v16, input:Lcom/android/internal/telephony/gsm/stk/Input;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    move v3, v0

    if-nez v3, :cond_4

    .line 1576
    if-nez v15, :cond_2

    .line 1577
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    move v5, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    move v6, v0

    invoke-direct {v8, v3, v5, v6}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    .line 1581
    :cond_4
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Z)V

    .line 1584
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    .line 1589
    .end local v16           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1590
    const-string v3, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1591
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1592
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1595
    :cond_5
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v5, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1597
    .local v17, intent:Landroid/content/Intent;
    if-nez v17, :cond_6

    .line 1598
    const-string v3, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1599
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1600
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1603
    :cond_6
    const/high16 v3, 0x1000

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1605
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    move v3, v0

    if-nez v3, :cond_7

    .line 1606
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1607
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1610
    :cond_7
    const-string v3, "setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1611
    const/16 v18, 0x0

    .line 1612
    .local v18, isInCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 1613
    .local v14, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1614
    .local v9, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    .line 1616
    .local v21, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const/4 v3, 0x1

    move/from16 v18, v3

    .line 1620
    :goto_3
    if-eqz v18, :cond_10

    .line 1621
    const-string v3, "phone is in call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_a

    .line 1625
    const-string/jumbo v3, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v5, 0x10400b7

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1628
    .local v19, message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v5, 0x1

    invoke-static {v3, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1632
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1634
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1616
    .end local v19           #message:Ljava/lang/CharSequence;
    :cond_9
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_3

    .line 1637
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_b

    .line 1640
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->switchHoldingAndActive()V

    .line 1641
    const/4 v3, 0x3

    const/16 v5, 0x1388

    move-object/from16 v0, p0

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1643
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 1645
    .local v12, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1646
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1647
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1651
    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_f

    .line 1654
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v20

    .line 1655
    .local v20, ringing:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v13

    .line 1656
    .local v13, fg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v10

    .line 1657
    .local v10, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1658
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    .line 1666
    :cond_c
    :goto_4
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1691
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :goto_5
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 1694
    const/4 v3, 0x4

    const/16 v4, 0x2710

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    goto/16 :goto_0

    .line 1659
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_d
    :try_start_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1660
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1668
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 1670
    .restart local v12       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1671
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1672
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1661
    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_e
    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1662
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 1677
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :cond_f
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1679
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 1683
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :cond_10
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1685
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 1703
    .end local v9           #backgroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v14           #foregroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #isInCall:Z
    .end local v21           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_7
    const/4 v8, 0x0

    .line 1704
    goto/16 :goto_1

    .line 1710
    :cond_11
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1711
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfoData:I

    move v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 1561
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 12
    .parameter "cmdParams"

    .prologue
    const v3, 0x10403a3

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v11, "null alphaId, default sending..."

    const-string v5, "gsm.STK_SETUP_MENU"

    .line 766
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 770
    .local v10, sessionEnd:Ljava/lang/Boolean;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 771
    .local v7, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 890
    const-string v1, "Unsupported command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 773
    .restart local p1
    :pswitch_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 775
    const-string v1, "gsm.STK_SETUP_MENU"

    const-string v1, ""

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :goto_1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 893
    .end local p1
    :cond_1
    :goto_2
    :pswitch_1
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 894
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "STK CMD"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 897
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    .line 899
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_0

    .line 777
    .end local v8           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 778
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 779
    const-string v1, "SETUP_MENU property Setting. -AAA"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_3

    .line 781
    const-string v1, "gsm.STK_SETUP_MENU"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    const/16 v2, 0x13

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :cond_3
    const-string v1, "gsm.STK_SETUP_MENU"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 787
    :cond_4
    const-string v1, "SETUP_MENU property Setting. -BBB"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    const-string v1, "gsm.STK_SETUP_MENU"

    const-string v1, "SIM Toolkit"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 798
    :pswitch_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_1

    .line 799
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_2

    .line 804
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "here : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "default refresh..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const v2, 0x104039e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 812
    .local v9, message:Ljava/lang/CharSequence;
    :goto_3
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 813
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 814
    goto/16 :goto_2

    .line 807
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "default reset..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const v2, 0x104039f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    goto :goto_3

    .line 810
    .end local v9           #message:Ljava/lang/CharSequence;
    :cond_6
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v9       #message:Ljava/lang/CharSequence;
    goto :goto_3

    .line 816
    .end local v9           #message:Ljava/lang/CharSequence;
    :pswitch_4
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_2

    .line 820
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 821
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 822
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 823
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 825
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 828
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_7
    const-string/jumbo v1, "wakelock for SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 830
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .line 835
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 836
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 837
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 838
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 840
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 843
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_8
    const-string/jumbo v1, "wakelock for USSD"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 845
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .line 850
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 851
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 852
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 854
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 859
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 860
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 861
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 862
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v2, "null alphaId, default sending..."

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 864
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 867
    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_9
    const-string/jumbo v1, "wakelock for SMS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xfde8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 869
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .line 887
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto/16 :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method private handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 18
    .parameter "cmdParams"

    .prologue
    .line 541
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move/from16 v16, v0

    .line 542
    .local v16, commandQualifier:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide local info command Qualifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    packed-switch v16, :pswitch_data_0

    .line 584
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v10, v0

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 587
    :goto_0
    return-void

    .line 551
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 554
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 555
    .local v15, calendar:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 556
    .local v2, res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    if-nez v15, :cond_0

    .line 557
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 559
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AM_PM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;

    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v15, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_1
    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    invoke-virtual {v15, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xff

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;-><init>(IIIIIII)V

    .line 570
    .restart local v2       #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 560
    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :cond_1
    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    goto :goto_1

    .line 574
    .end local v15           #calendar:Ljava/util/Calendar;
    :pswitch_2
    const/4 v8, 0x0

    .line 575
    .local v8, response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 576
    .local v17, loc:Ljava/util/Locale;
    if-nez v17, :cond_2

    .line 577
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 579
    :cond_2
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;

    .end local v8           #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;-><init>(Ljava/lang/String;)V

    .line 580
    .restart local v8       #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 13
    .parameter "cmdParams"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0xa

    .line 460
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DTMF String is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    const/4 v9, 0x0

    aget-byte v2, v8, v9

    .line 463
    .local v2, rawDataLength:I
    mul-int/lit8 v8, v2, 0x2

    new-array v4, v8, [B

    .line 464
    .local v4, tempDTMFString:[B
    const/4 v5, 0x0

    .line 465
    .local v5, tempDTMFStringLength:I
    const/4 v6, 0x0

    .line 468
    .local v6, workingPtr:I
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v6

    .end local v6           #workingPtr:I
    .local v7, workingPtr:I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 469
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .line 470
    .local v3, temp:B
    if-ne v3, v12, :cond_1

    const/16 v3, 0x70

    .line 474
    :goto_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    aput-byte v3, v4, v7

    .line 475
    add-int/lit8 v5, v5, 0x1

    .line 476
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .line 477
    const/16 v8, 0xf

    if-eq v3, v8, :cond_0

    .line 478
    if-ne v3, v12, :cond_4

    const/16 v3, 0x70

    .line 482
    :goto_2
    add-int/lit8 v7, v6, 0x1

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    aput-byte v3, v4, v6

    .line 483
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .line 468
    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    goto :goto_0

    .line 471
    :cond_1
    if-ne v3, v10, :cond_2

    const/16 v3, 0x2a

    goto :goto_1

    .line 472
    :cond_2
    if-ne v3, v11, :cond_3

    const/16 v3, 0x23

    goto :goto_1

    .line 473
    :cond_3
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_1

    .line 479
    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_4
    if-ne v3, v10, :cond_5

    const/16 v3, 0x2a

    goto :goto_2

    .line 480
    :cond_5
    if-ne v3, v11, :cond_6

    const/16 v3, 0x23

    goto :goto_2

    .line 481
    :cond_6
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_2

    .line 487
    .end local v3           #temp:B
    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    :cond_7
    const-string/jumbo v8, "wakelock for DTMF"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v9, 0xfde8

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 490
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/DtmfString;

    invoke-direct {v8, v5, v4}, Lcom/android/internal/telephony/gsm/stk/DtmfString;-><init>(I[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    .line 492
    return-void
.end method

.method private handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 5
    .parameter "cmdParams"

    .prologue
    const/4 v4, 0x0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Smscaddress is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Sms Pdu is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sendRawPduSat([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 537
    const/4 v1, 0x2

    const v2, 0xea60

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 538
    return-void
.end method

.method private handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 9
    .parameter "cmdParams"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    const/16 v1, 0x7530

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 444
    return-void

    .line 438
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 440
    .local v7, e:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "fail to send SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0
.end method

.method private handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 7
    .parameter "cmdParams"

    .prologue
    const/4 v6, 0x1

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ussdString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v1, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->dcsCode:I

    .line 450
    .local v1, dcsCode:I
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v2, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    .line 451
    .local v2, ussdLength:I
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    .line 452
    .local v3, ussdString:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcsCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-boolean v6, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 454
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendEncodedUssd([BII)V

    .line 456
    const/16 v4, 0x7530

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 457
    return-void
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 10
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 368
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v7, 0x0

    .line 374
    .local v7, cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 411
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_0

    .line 377
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 378
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_0

    .line 379
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    .line 385
    :pswitch_3
    :try_start_0
    iget-object v9, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    if-eqz v7, :cond_0

    .line 393
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_2

    .line 394
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 388
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 399
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 405
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 406
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_0

    .line 407
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 908
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 913
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1515
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    .line 1522
    :goto_0
    return v1

    .line 1518
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1519
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 1520
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v4

    .line 1522
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1096
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1099
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1100
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1103
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1106
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1107
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1108
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1109
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1110
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1113
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1114
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1115
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1116
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1119
    if-eqz p2, :cond_0

    .line 1120
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1121
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1122
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1125
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1128
    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .line 1129
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 1131
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1134
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "data"
    .parameter "resp"

    .prologue
    .line 972
    const-string v6, " sendTerminalResponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    if-nez p1, :cond_0

    .line 974
    const-string v6, "(cmdDet == null) "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    :goto_0
    return-void

    .line 978
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 981
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 982
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1

    .line 983
    or-int/lit16 v5, v5, 0x80

    .line 985
    :cond_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 986
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 987
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 988
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 989
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 991
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 992
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 993
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 994
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 995
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 998
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 999
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1003
    const/4 v3, 0x0

    .line 1006
    .local v3, length:I
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_7

    .line 1008
    const-string v6, " making Send SS Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    if-eqz v6, :cond_2

    .line 1011
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    add-int/lit8 v3, v6, 0x1

    .line 1013
    :cond_2
    if-nez v3, :cond_3

    .line 1014
    const/4 v3, 0x1

    .line 1016
    :cond_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1018
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 1019
    const-string v6, " SS Release complete error info "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    const/16 v6, 0x34

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1027
    :goto_1
    const/4 v4, 0x0

    .line 1029
    .local v4, rawData:[B
    :try_start_0
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1034
    :goto_2
    if-eqz v4, :cond_4

    .line 1035
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1080
    .end local v4           #rawData:[B
    :cond_4
    :goto_3
    if-eqz p4, :cond_5

    .line 1081
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1084
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1085
    .restart local v4       #rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1091
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .line 1023
    .end local v2           #hexString:Ljava/lang/String;
    .end local v4           #rawData:[B
    :cond_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1030
    .restart local v4       #rawData:[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1032
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1039
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_7
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_4

    .line 1041
    const-string v6, " making Send USSD Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 1043
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1044
    const-string v6, " USSD result error "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    const/16 v6, 0x37

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1046
    const/4 v4, 0x0

    .line 1048
    .restart local v4       #rawData:[B
    :try_start_1
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1054
    :goto_4
    if-eqz v4, :cond_4

    .line 1055
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    .line 1056
    :cond_8
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 1049
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 1051
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 1060
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_9
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1061
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1062
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1064
    const/4 v4, 0x0

    .line 1066
    .restart local v4       #rawData:[B
    :try_start_2
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 1071
    :goto_5
    if-eqz v4, :cond_4

    .line 1072
    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1073
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1074
    const/4 v6, 0x2

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_3

    .line 1067
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1069
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 919
    if-nez p1, :cond_0

    .line 967
    :goto_0
    return-void

    .line 922
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 925
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 926
    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    .line 927
    or-int/lit16 v4, v4, 0x80

    .line 929
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 930
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 931
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 932
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 933
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 936
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 937
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 938
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 939
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 940
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 943
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 944
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 945
    if-eqz p3, :cond_4

    move v2, v6

    .line 946
    .local v2, length:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 947
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 950
    if-eqz p3, :cond_2

    .line 951
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 955
    :cond_2
    if-eqz p5, :cond_3

    .line 956
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 959
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 960
    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 966
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .line 945
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_4
    const/4 v5, 0x1

    move v2, v5

    goto :goto_1
.end method

.method private validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z

    move-result v0

    .line 1510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSessionEnd(Landroid/os/Handler;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkProactiveCmd(Landroid/os/Handler;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvent(Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkCallSetUp(Landroid/os/Handler;)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 364
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 1216
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 1480
    :pswitch_0
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized STK command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1221
    :pswitch_1
    const-string v5, "ril message arrived"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    const/16 v19, 0x0

    .line 1223
    .local v19, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1224
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1225
    .local v16, ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1227
    :try_start_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19           #data:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v19       #data:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 1482
    .end local v19           #data:Ljava/lang/String;
    .end local p1
    :cond_1
    :goto_0
    :pswitch_2
    return-void

    .line 1228
    .restart local v16       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :catch_0
    move-exception v5

    move-object/from16 v20, v5

    .line 1229
    .local v20, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1236
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    .line 1241
    :pswitch_4
    const-string v5, "MSG_ID_PHONE_DISCONNECT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1243
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1245
    .local v21, intent:Landroid/content/Intent;
    if-nez v21, :cond_2

    .line 1246
    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    .line 1250
    :cond_2
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1252
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1262
    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto/16 :goto_0

    .line 1265
    .restart local p1
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto/16 :goto_0

    .line 1268
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v6, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    .line 1269
    .local v6, event:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v7, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    .line 1270
    .local v7, sourceId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v8, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    .line 1271
    .local v8, destinationId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    move-object v9, v0

    .line 1272
    .local v9, additionalInfo:[B
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    goto/16 :goto_0

    .line 1275
    .end local v6           #event:I
    .end local v7           #sourceId:I
    .end local v8           #destinationId:I
    .end local v9           #additionalInfo:[B
    .restart local p1
    :pswitch_8
    const-string v5, "handleMsg : MSG_ID_RELEASE_COMPLETE_MESSAGE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_1

    :pswitch_9
    goto/16 :goto_0

    .line 1279
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1280
    const/16 v23, 0x0

    .line 1281
    .local v23, ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1282
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1283
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1285
    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    check-cast v23, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1292
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_3
    if-nez v23, :cond_4

    .line 1293
    new-instance v23, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;

    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;-><init>()V

    .line 1296
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_4
    const-string v5, "got ReleaseComplete and need it"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 1299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v5, v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v5, v6, :cond_6

    .line 1302
    :cond_5
    const-string v5, "send fail TR "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1286
    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v5

    move-object/from16 v20, v5

    .line 1287
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 1306
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    .restart local v23       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1309
    :cond_7
    const-string v5, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1315
    .end local v23           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :pswitch_b
    const-string v5, "mWaitingSetupCallHoldResult = true"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1323
    :pswitch_c
    const-string v5, "MSG_ID_TIMEOUT timeout!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-nez v5, :cond_8

    .line 1325
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_0

    .line 1328
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_2

    .line 1386
    :cond_9
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_0

    .line 1332
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_b

    .line 1333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_a

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1

    .line 1336
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1

    .line 1338
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_9

    .line 1339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_c

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_1

    .line 1342
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    .line 1347
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    .line 1351
    :pswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_d

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    .line 1354
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    .line 1360
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v5, :cond_e

    .line 1361
    const-string v5, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1365
    :cond_e
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1367
    .restart local v21       #intent:Landroid/content/Intent;
    if-nez v21, :cond_f

    .line 1368
    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1372
    :cond_f
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1373
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 1374
    const-string v5, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1382
    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_1

    .line 1389
    :pswitch_12
    const-string v5, "MSG_ID_SEND_DTMF_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1390
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1391
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 1392
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1393
    .restart local v16       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_11

    .line 1394
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .line 1395
    .local v18, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_10

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1398
    :cond_10
    const-string v5, "send DTMF Error except GENERIC_FAILURE!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1402
    .end local v18           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1407
    .end local v16           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    const-string v5, "handleMsg : MSG_ID_SEND_SMS_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 1413
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Msg ID data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1415
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 1416
    .local v22, result:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_12

    .line 1417
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1418
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_12

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_12

    .line 1420
    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v22, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1426
    .end local v16           #ar:Landroid/os/AsyncResult;
    :cond_12
    const/4 v5, 0x0

    aget v5, v22, v5

    sparse-switch v5, :sswitch_data_0

    .line 1450
    const-string v5, "SMS SEND GENERIC FAIL"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_16

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1421
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_2
    move-exception v5

    move-object/from16 v20, v5

    .line 1422
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 1429
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :sswitch_0
    const-string v5, "SMS SEND OK"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_13

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1433
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1436
    :sswitch_1
    const-string v5, "SMS SEND FAIL - MEMORY NOT AVAILABLE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_14

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1440
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1443
    :sswitch_2
    const-string v5, "SMS SEND FAIL RETRY"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_15

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1447
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1454
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .line 1460
    .end local v22           #result:[I
    .restart local p1
    :pswitch_14
    const-string v5, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1461
    const/16 v17, 0x0

    .line 1462
    .local v17, callcontrol_result:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_17

    .line 1463
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1464
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_17

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_17

    .line 1466
    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17           #callcontrol_result:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1472
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v17       #callcontrol_result:Ljava/lang/String;
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call control result data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1467
    .end local v17           #callcontrol_result:Ljava/lang/String;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_3
    move-exception v5

    move-object/from16 v20, v5

    .line 1468
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 1476
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_15
    const-string v5, "pause 3 secs"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    goto/16 :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_5
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_7
        :pswitch_4
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1276
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1328
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_e
    .end packed-switch

    .line 1426
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8016 -> :sswitch_1
        0x802a -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_0
    const-string v1, "onCmdResponse()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    if-nez p1, :cond_0

    .line 1493
    :goto_0
    monitor-exit p0

    return-void

    .line 1491
    :cond_0
    const/4 v1, 0x6

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1492
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1486
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;)V
    .locals 2
    .parameter "eventMsg"

    .prologue
    .line 1497
    monitor-enter p0

    :try_start_0
    const-string v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    if-nez p1, :cond_0

    .line 1504
    :goto_0
    monitor-exit p0

    return-void

    .line 1502
    :cond_0
    const/16 v1, 0xe

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1503
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1497
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method processDTMFString()V
    .locals 5

    .prologue
    const/16 v4, 0x70

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtmfStringLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    DTMFString : <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, countP:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfLastRequest(C)V

    .line 519
    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0x1388

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 520
    :goto_1
    return-void

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_3

    .line 505
    add-int/lit8 v0, v0, 0x1

    .line 507
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 510
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto :goto_1

    .line 515
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfRequest(C)V

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto/16 :goto_0
.end method

.method sendDtmfLastRequest(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfLastRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 531
    return-void
.end method

.method sendDtmfRequest(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 526
    return-void
.end method

.method startTimeOut(II)V
    .locals 3
    .parameter "timeDest"
    .parameter "duration"

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 428
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 429
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 430
    return-void
.end method
