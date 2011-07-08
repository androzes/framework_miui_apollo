.class public Lcom/android/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final BUTTON_TEXT_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final BUTTON_TEXT_DENY:Ljava/lang/String; = "Deny"

.field private static final DEBUG:Z = true

.field private static final GPS_NO_RESPONSE_TIME_OUT:I = 0x1

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetInitiatedActivity"

.field private static final VERBOSE:Z


# instance fields
.field private default_response:I

.field private final mHandler:Landroid/os/Handler;

.field private mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

.field private notificationId:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 56
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 57
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    .line 58
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    .line 61
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$1;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$2;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->handleNIVerify(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/NetInitiatedActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    return-void
.end method

.method private handleNIVerify(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 149
    const-string v1, "notif_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, notifId:I
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 152
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNIVerify action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method private sendUserResponse(I)V
    .locals 4
    .parameter "response"

    .prologue
    .line 142
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUserResponse, response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 145
    .local v0, locationManager:Landroid/location/LocationManager;
    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    .line 146
    return-void
.end method

.method private showNIError()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "NI error"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 128
    if-ne p2, v1, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 131
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 132
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    .line 137
    iput v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 93
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x1080194

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 94
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 95
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 96
    const-string v2, "Accept"

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    const-string v2, "Deny"

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 99
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    const-string v2, "notif_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    .line 102
    const-string/jumbo v2, "timeout"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    .line 103
    const-string v2, "default_resp"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    .line 104
    const-string v2, "NetInitiatedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate, notifId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " default_response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->setupAlert()V

    .line 108
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 120
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 113
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method
