.class public Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;
.super Landroid/preference/PreferenceActivity;
.source "DiscoverServicesActivity.java"


# static fields
.field private static final KEY_BT_NAME:Ljava/lang/String; = "bt_name"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final KEY_BT_SERVICE_LIST:Ljava/lang/String; = "bt_service_list"

.field private static final MENU_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiscoverServicesActivity"


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field mName:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceList:Lcom/android/settings/ProgressCategory;

.field private mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processDiscoverEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method private getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "savedInstanceState"

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, val:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-object v1
.end method

.method private processDiscoverEvent(Landroid/os/Bundle;)V
    .locals 8
    .parameter "extra"

    .prologue
    .line 242
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 243
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 245
    .local v1, d:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    .line 246
    .local v0, address:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    const-string v6, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 249
    .local v5, uuids:[Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 250
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v3, processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 253
    aget-object v4, v5, v2

    check-cast v4, Landroid/os/ParcelUuid;

    .line 254
    .local v4, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 255
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

    invoke-static {p0, v4, v6}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap;->getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V

    .line 251
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    .end local v5           #uuids:[Landroid/os/Parcelable;
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 263
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 264
    return-void
.end method


# virtual methods
.method public discoverServices()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 231
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 232
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteServices(Ljava/lang/String;)Z

    .line 237
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 139
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->finish()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 146
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const-string v2, "DiscoverServicesActivity"

    const-string v3, "Activity started without address"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->finish()V

    .line 154
    :cond_2
    const v2, 0x7f04000f

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->addPreferencesFromResource(I)V

    .line 155
    const-string v2, "bt_name"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 156
    .local v1, mNamePreference:Landroid/preference/Preference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 161
    const-string v2, "android.bluetooth.device.extra.NAME"

    invoke-direct {p0, v2, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :cond_3
    const-string v2, "bt_service_list"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProgressCategory;

    iput-object v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings/ProgressCategory;

    .line 169
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    const v0, 0x7f0905ba

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10801bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 190
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 206
    :pswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 217
    const-string v0, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 197
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 198
    return v3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bleutooth.device.action.UUID"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 177
    return-void
.end method
