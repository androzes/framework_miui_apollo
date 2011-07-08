.class public Lcom/android/settings/UsbSettings;
.super Landroid/app/ListActivity;
.source "UsbSettings.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "USB Settings"

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field private static final mUSBItems:[Ljava/lang/String;


# instance fields
.field private final USBMENUSEL_PATH:Ljava/lang/String;

.field private final askon:[B

.field private final kies:[B

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPluggedType:I

.field private mUSB_mode:I

.field private final mtp:[B

.field private final ums:[B

.field usbSettingsModeToPosition:I

.field private final vtp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    .line 53
    iput v0, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    .line 56
    new-instance v0, Lcom/android/settings/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsbSettings$1;-><init>(Lcom/android/settings/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    const-string v0, "/sys/class/sec/switch/UsbMenuSel"

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->USBMENUSEL_PATH:Ljava/lang/String;

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->kies:[B

    .line 112
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->mtp:[B

    .line 113
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->ums:[B

    .line 114
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->vtp:[B

    .line 115
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/UsbSettings;->askon:[B

    return-void

    .line 111
    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 112
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 113
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 114
    :array_3
    .array-data 0x1
        0x56t
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method

.method private ShowErrorPopup()V
    .locals 3

    .prologue
    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 151
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UsbSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/UsbSettings$2;-><init>(Lcom/android/settings/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->setFocus()V

    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/UsbSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/UsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method private selectUsb(Ljava/lang/String;)V
    .locals 3
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/switch/UsbMenuSel"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "KIES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/settings/UsbSettings;->kies:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 251
    :goto_1
    return-void

    .line 232
    :cond_1
    :try_start_1
    const-string v2, "MTP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/android/settings/UsbSettings;->mtp:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 246
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v2, "UMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/android/settings/UsbSettings;->ums:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2

    .line 238
    :cond_3
    :try_start_4
    const-string v2, "VTP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/settings/UsbSettings;->vtp:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 241
    :cond_4
    const-string v2, "ASKON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/settings/UsbSettings;->askon:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method private setFocus()V
    .locals 3

    .prologue
    const-string v2, "USB Settings"

    .line 140
    const-string v0, "USB Settings"

    const-string v0, "Set focus()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 142
    const-string v0, "USB Settings"

    const-string v0, "Set focus() : USB connected"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    .line 81
    iget v2, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    if-ne v2, v8, :cond_0

    .line 82
    const-string v2, "USB Settings"

    const-string v3, "sending disable intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.android.samsung.IcsService"

    const-string v3, "com.android.samsung.IcsService.IcsService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->stopService(Landroid/content/Intent;)Z

    .line 88
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090423

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 89
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090424

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 90
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090425

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    sget-object v2, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090427

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 95
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    sget-object v4, Lcom/android/settings/UsbSettings;->mUSBItems:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/UsbSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 99
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 100
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 102
    iget v2, p0, Lcom/android/settings/UsbSettings;->mUSB_mode:I

    iput v2, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    .line 103
    iget v2, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 104
    iput v8, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    .line 106
    :cond_1
    iget v2, p0, Lcom/android/settings/UsbSettings;->usbSettingsModeToPosition:I

    invoke-virtual {v1, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 108
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "USB Settings"

    const-string v5, "usb_setting_mode"

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_setting_mode"

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, previous_usb_setting_mode:I
    const-string v3, "USB Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previous mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current position"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v3, p0, Lcom/android/settings/UsbSettings;->mPluggedType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 172
    const-string v3, "USB Settings"

    const-string v3, "USB connected"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->ShowErrorPopup()V

    .line 223
    :goto_0
    return-void

    .line 187
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_setting_mode"

    invoke-static {v3, v5, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    move v2, p3

    .line 218
    .local v2, usbSettingsModeFromPosition:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 219
    const/4 v2, 0x4

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_setting_mode"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/UsbSettings;->finish()V

    goto :goto_0

    .line 190
    .end local v2           #usbSettingsModeFromPosition:I
    :pswitch_0
    :try_start_0
    const-string v3, "KIES"

    invoke-direct {p0, v3}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 213
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v3, "MTP"

    invoke-direct {p0, v3}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :pswitch_2
    const-string v3, "UMS"

    invoke-direct {p0, v3}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :pswitch_3
    const-string v3, "ASKON"

    invoke-direct {p0, v3}, Lcom/android/settings/UsbSettings;->selectUsb(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "USB Settings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/UsbSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/UsbSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "USB Settings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/UsbSettings;->initIntentFilter()V

    .line 124
    return-void
.end method
