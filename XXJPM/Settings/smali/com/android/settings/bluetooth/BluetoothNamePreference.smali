.class public Lcom/android/settings/bluetooth/BluetoothNamePreference;
.super Landroid/preference/EditTextPreference;
.source "BluetoothNamePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "BluetoothNamePreference"


# instance fields
.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    return-void
.end method

.method private setSummaryToName()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 105
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "s"

    .prologue
    const/4 v8, -0x1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 131
    .local v0, d:Landroid/app/Dialog;
    const/4 v4, 0x0

    .line 132
    .local v4, spaceNum:I
    const/4 v1, 0x0

    .line 134
    .local v1, deviceName:Ljava/lang/String;
    instance-of v5, v0, Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    .line 135
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 136
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v5, "BluetoothNamePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deviceName is [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    if-lez v3, :cond_2

    if-ne v3, v4, :cond_4

    .line 146
    :cond_2
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_3
    :goto_1
    return-void

    .line 148
    .restart local v0       #d:Landroid/app/Dialog;
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_4
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 155
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 123
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 160
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 97
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 113
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 114
    const/4 v1, 0x1

    return v1
.end method

.method public resume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v4, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 84
    .local v2, et:Landroid/widget/EditText;
    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 85
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 88
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 89
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 90
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    return-void

    .restart local v0       #b:Landroid/widget/Button;
    :cond_1
    move v4, v7

    .line 90
    goto :goto_0
.end method
