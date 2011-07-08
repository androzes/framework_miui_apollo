.class public Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFTPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPReceiver"


# instance fields
.field private ctx:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private fileSize:I

.field private opcode:B

.field private remoteDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v8, "remoteDeviceName"

    const-string v7, "opcode"

    const-string v6, "fileSize"

    const-string v5, "fileName"

    .line 50
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->ctx:Landroid/content/Context;

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.broadcom.bt.service.ftp.action.FTP_SD_FULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string v2, "fileName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->fileName:Ljava/lang/String;

    .line 55
    const-string v2, "fileSize"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->fileSize:I

    .line 56
    const-string v2, "opcode"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    iput-byte v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->opcode:B

    .line 57
    const-string v2, "remoteDeviceName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->remoteDeviceName:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->ctx:Landroid/content/Context;

    const-class v3, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, ftsDialogIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    const-string v2, "fileName"

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "fileSize"

    iget v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->fileSize:I

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v2, "opcode"

    iget-byte v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->opcode:B

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 67
    const-string v2, "remoteDeviceName"

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->remoteDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v0           #ftsDialogIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.broadcom.bt.service.ftp.action.FTP_PBAP_CONNECTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPReceiver;->ctx:Landroid/content/Context;

    const v3, 0x7f0905a6

    const/16 v4, 0x7d0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 73
    .local v1, t:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
