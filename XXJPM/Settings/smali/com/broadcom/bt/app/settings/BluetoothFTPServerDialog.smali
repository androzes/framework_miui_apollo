.class public Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothFTPServerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPServerDialog"


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileSize:I

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mView:Landroid/view/View;

.field private opcode:B

.field private remoteDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createDialog()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mLine1View:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mLine1View:Landroid/widget/TextView;

    const v1, 0x7f09057a

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->remoteDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mLine2View:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mLine2View:Landroid/widget/TextView;

    const v1, 0x7f09057b

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->fileName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mLine3View:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mLine3View:Landroid/widget/TextView;

    const v1, 0x7f09057c

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->fileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    const-string v0, "BluetoothFTPServerDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v1, "BluetoothFTPServerDialog"

    const-string v2, "onCreate::BluetoothFTPServerDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, ftsIntent:Landroid/content/Intent;
    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->fileName:Ljava/lang/String;

    .line 65
    const-string v1, "fileSize"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->fileSize:I

    .line 66
    const-string v1, "opcode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->opcode:B

    .line 67
    const-string v1, "remoteDeviceName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->remoteDeviceName:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 71
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f090579

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->createDialog()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f09057d

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 76
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothFTPServerDialog;->setupAlert()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "BluetoothFTPServerDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 115
    return-void
.end method
