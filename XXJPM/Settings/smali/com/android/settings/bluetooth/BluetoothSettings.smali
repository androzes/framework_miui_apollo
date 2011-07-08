.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_BT_CHECKBOX:Ljava/lang/String; = "bt_checkbox"

.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_DISCOVERABLE:Ljava/lang/String; = "bt_discoverable"

.field private static final KEY_BT_NAME:Ljava/lang/String; = "bt_name"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final SCREEN_TYPE_DEVICEPICKER:I = 0x1

.field private static final SCREEN_TYPE_SETTINGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private bluetoothState:I

.field private intent:Landroid/content/Intent;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtenableDevicePicker:Z

.field private mCallFromBPP:Z

.field private mCallFromHeadset:Z

.field private mCallFromObex:Z

.field private mDeviceList:Lcom/android/settings/ProgressCategory;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

.field private mNeedAuth:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:I

.field private mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

.field m_bObexWaitForBonding:Z

.field m_iBPPReturn:I

.field m_iObexReturn:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 103
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 107
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->m_bObexWaitForBonding:Z

    .line 112
    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->m_iObexReturn:I

    .line 113
    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->m_iBPPReturn:I

    .line 122
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevices()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->loadView(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 8
    .parameter "cachedDevice"

    .prologue
    const/16 v7, 0x600

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 578
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 579
    .local v1, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 581
    .local v0, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    const-string v2, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDevicePreference:mFileterType is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    packed-switch v2, :pswitch_data_0

    move v2, v5

    .line 638
    :goto_0
    return v2

    .line 585
    :pswitch_0
    if-eqz v1, :cond_0

    .line 586
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 587
    goto :goto_0

    .line 588
    :cond_0
    if-eqz v0, :cond_8

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 590
    goto :goto_0

    .line 594
    :pswitch_1
    if-eqz v1, :cond_2

    .line 595
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 596
    goto :goto_0

    .line 598
    :cond_1
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 599
    goto :goto_0

    .line 600
    :cond_2
    if-eqz v0, :cond_8

    .line 601
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    goto :goto_0

    .line 608
    :pswitch_2
    if-eqz v1, :cond_4

    .line 609
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 610
    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x408

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x404

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x420

    if-ne v2, v3, :cond_8

    :cond_5
    move v2, v5

    .line 614
    goto :goto_0

    .line 618
    :pswitch_3
    if-eqz v1, :cond_6

    .line 619
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 620
    goto :goto_0

    .line 621
    :cond_6
    if-eqz v0, :cond_8

    .line 622
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-eq v2, v7, :cond_8

    move v2, v5

    .line 623
    goto/16 :goto_0

    .line 627
    :pswitch_4
    if-eqz v1, :cond_7

    .line 628
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PRINTER_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 629
    goto/16 :goto_0

    .line 631
    :cond_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-ne v2, v7, :cond_8

    move v2, v5

    goto/16 :goto_0

    :cond_8
    move v2, v6

    .line 638
    goto/16 :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addDevices()V
    .locals 5

    .prologue
    .line 426
    const-string v3, "BluetoothSettings"

    const-string v4, "[SISO]call to addDevices from settings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, cachedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 430
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 432
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 719
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method private createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 643
    const-string v1, "BluetoothSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SISO ] Inside createDevicePreference where the devicelist is accessed to add preference. mFilterType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 647
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    .line 653
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    return-void

    .line 650
    .end local v0           #preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_2
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .restart local v0       #preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    goto :goto_0
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 6
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 543
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 554
    :goto_0
    return-object v3

    .line 547
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 548
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 550
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v5

    .line 551
    goto :goto_0

    .line 554
    :cond_3
    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    goto :goto_0
.end method

.method private loadView(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 336
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    .line 337
    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    .line 338
    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 340
    const-string v0, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    .line 341
    const-string v0, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    .line 343
    const v0, 0x7f0904fb

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 345
    const-string v0, "BluetoothSettings"

    const-string v1, "mDeviceList preference loaded from loadView "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    .line 350
    return-void
.end method

.method private onBluetoothStateChanged(I)V
    .locals 4
    .parameter "bluetoothState"

    .prologue
    const/4 v2, 0x1

    const-string v3, "BluetoothSettings"

    .line 673
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 677
    const-string v0, "BluetoothSettings"

    const-string v0, "SISO onBluetoothStateChanged before If  STATE_ON "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    if-ne v0, v2, :cond_1

    .line 679
    :cond_0
    const-string v0, "BluetoothSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SISO onBluetoothStateChanged inside If  mProgressDialog.dismiss(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 683
    :cond_1
    const-string v0, "BluetoothSettings"

    const-string v0, "[SISO]Inside the BluetooSettings scan from onBluetoothStateChanged "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    :goto_0
    return-void

    .line 686
    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 687
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 691
    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 693
    const-string v0, "BluetoothSettings"

    const-string v0, "SISO onBluetoothStateChanged before If STATE_TURNING_ON "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    if-ne v0, v2, :cond_2

    .line 695
    :cond_5
    const-string v0, "BluetoothSettings"

    const-string v0, "SISO onBluetoothStateChanged inside If  mProgressDialog show "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 697
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0900e9

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 699
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 573
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 535
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 536
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 539
    :goto_0
    return v1

    .line 538
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 539
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "BluetoothSettings"

    .line 187
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 190
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 201
    :cond_0
    iput v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->intent:Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 227
    const v3, 0x7f0905a7

    const/16 v4, 0x7d0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 228
    .local v2, t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 230
    const-string v3, "BluetoothSettings"

    const-string v3, "on Flight mode, bluetooth cannot be launched! finish activity"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 331
    .end local v2           #t:Landroid/widget/Toast;
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->bluetoothState:I

    .line 240
    :cond_3
    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    .line 241
    const-string v3, "BluetoothSettings"

    const-string v3, "SISO mScreenType = SCREEN_TYPE_DEVICEPICKER"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->bluetoothState:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    .line 248
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090201

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09059e

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09057e

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09057f

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 318
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 322
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 323
    const-string v3, "android.obex.FromObexPushActivity"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    .line 324
    const-string v3, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SISO] Call from obex value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v3, "android.printer.FromBppActivity"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    .line 326
    const-string v3, "BluetoothSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SISO] Call from BPP value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    goto/16 :goto_0

    .line 285
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_5
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->bluetoothState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 288
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->intent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->loadView(Landroid/content/Intent;)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_1

    .line 300
    :cond_6
    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 302
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 306
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    const-string v3, "bt_discoverable"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 310
    const-string v3, "bt_name"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothNamePreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    .line 312
    const-string v3, "bt_device_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ProgressCategory;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 524
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-eqz v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 528
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got onDeviceAdded, but cachedDevice already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 566
    :cond_1
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 661
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 664
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 401
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 404
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 411
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->pause()V

    .line 413
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 414
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 416
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const-string v7, "BluetoothSettings"

    .line 438
    const-string v4, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    const-string v4, "BluetoothSettings"

    const-string v4, "[SISO]Inside the BluetooSettings scan from onPreferenceTreeClick"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4, v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v4, v6

    .line 517
    :goto_0
    return v4

    .line 445
    :cond_0
    const-string v4, "bt_checkbox"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 449
    :cond_1
    instance-of v4, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_9

    .line 450
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-object v1, v0

    .line 452
    .local v1, btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    if-eqz v4, :cond_3

    .line 458
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 462
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SISO ] Sending the remote device name and address back to OPPactivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v4, "android.obex.settings"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const-string v4, "android.obex.SelectedDeviceAddress"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v4, "android.obex.SelectedDeviceName"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->m_iObexReturn:I

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setResult(ILandroid/content/Intent;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    move v4, v6

    .line 514
    goto :goto_0

    .line 472
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    if-eqz v4, :cond_4

    .line 475
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 481
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending the remote device name and address back to BPPactivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v4, "android.bpp.SelectedDeviceAddress"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v4, "android.bpp.SelectedDeviceName"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->m_iBPPReturn:I

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setResult(ILandroid/content/Intent;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_1

    .line 491
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    if-eqz v4, :cond_5

    .line 492
    const-string v4, "BluetoothSettings"

    const-string v4, "Connecting Bluetooth Headset in Call Screen/MP Screen"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto :goto_1

    .line 498
    :cond_5
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v4, :cond_6

    .line 499
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto/16 :goto_1

    .line 500
    :cond_6
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-ne v4, v6, :cond_2

    .line 501
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 503
    .local v2, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 504
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 505
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->persistSelectedDeviceInPicker(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    if-nez v4, :cond_8

    .line 508
    :cond_7
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_1

    .line 511
    :cond_8
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto/16 :goto_1

    .line 517
    .end local v1           #btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .end local v2           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 356
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "OnResume will keep on adding the devices"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 363
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 371
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevices()V

    .line 378
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 380
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 381
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->resume()V

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 397
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 668
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 423
    return-void
.end method
