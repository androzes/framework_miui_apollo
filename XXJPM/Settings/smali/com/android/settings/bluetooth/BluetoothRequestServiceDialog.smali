.class public Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothRequestServiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothRequestServiceDialog"


# instance fields
.field private mActionString:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOpCode:B

.field private mRemoteAddress:Ljava/lang/String;

.field private mRemoteName:Ljava/lang/String;

.field private mRequestedServiceID:B

.field private mRequestedServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    .local v0, messageView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    return-object v1
.end method

.method private getRemoteNameAndAddressFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "mIntent"

    .prologue
    .line 343
    const-string v0, "broadcom.android.bluetooth.intent.FILE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mFileName:Ljava/lang/String;

    .line 344
    const-string v0, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 352
    :cond_0
    return-void
.end method

.method private onAllow(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 406
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;-><init>()V

    .line 407
    .local v0, bluetoothAccessResponse:Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0, v1, p1}, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->AccessRequestResponse(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 409
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    .line 411
    return-void
.end method

.method private setActionAndServerString()V
    .locals 2

    .prologue
    .line 265
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 266
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    const v0, 0x7f09056d

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    .line 332
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 333
    const v0, 0x7f090543

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    .line 335
    :cond_1
    return-void

    .line 268
    :pswitch_0
    const v0, 0x7f09056e

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 272
    :pswitch_1
    const v0, 0x7f09056f

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 276
    :pswitch_2
    const v0, 0x7f090570

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 280
    :pswitch_3
    const v0, 0x7f090571

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 284
    :pswitch_4
    const v0, 0x7f090572

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 288
    :pswitch_5
    const v0, 0x7f090573

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_2
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 297
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_1

    .line 316
    :goto_2
    const v0, 0x7f090574

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    goto :goto_1

    .line 299
    :pswitch_6
    const v0, 0x7f090575

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 303
    :pswitch_7
    const v0, 0x7f090576

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 307
    :pswitch_8
    const v0, 0x7f090577

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 311
    :pswitch_9
    const v0, 0x7f090578

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 319
    :cond_3
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_2

    .line 329
    :goto_3
    const v0, 0x7f090544

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 323
    :pswitch_a
    const v0, 0x7f090545

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_3

    .line 326
    :pswitch_b
    const v0, 0x7f090546

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_3

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 321
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 415
    packed-switch p2, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 417
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_0

    .line 421
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const-string v6, "BluetoothRequestServiceDialog"

    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const-string v4, "service.brcm.bt.secure_mode"

    const-string v5, "property not found"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, mSecureModeProperty:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;-><init>()V

    .line 147
    .local v0, bluetoothAccessResponse:Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;
    const/4 v4, 0x1

    invoke-virtual {v0, p0, v1, v4}, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->AccessRequestResponse(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->finish()V

    .line 243
    .end local v0           #bluetoothAccessResponse:Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 156
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 157
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x10801ce

    iput v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    .line 160
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    const-string v4, "BluetoothRequestServiceDialog"

    const-string v4, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v5, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    iput-byte v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    .line 171
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v5, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    iput-byte v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    .line 174
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getRemoteNameAndAddressFromIntent(Landroid/content/Intent;)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->setActionAndServerString()V

    .line 177
    const-string v4, "BluetoothRequestServiceDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Oper Code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v4, 0x7f090542

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 232
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->createView()Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 236
    const v4, 0x7f090580

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 237
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 238
    const v4, 0x7f090581

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 239
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_0

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 227
    const-string v4, "BluetoothRequestServiceDialog"

    const-string v4, "Unknown Intent "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->setupAlert()V

    .line 251
    return-void
.end method
