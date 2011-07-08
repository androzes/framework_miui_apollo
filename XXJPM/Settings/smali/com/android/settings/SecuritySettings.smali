.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CredentialStorage;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final DEFAULT_PHPWD:Ljava/lang/String; = "00000000"

.field private static final DEFAULT_SENDER_NAME:Ljava/lang/String; = "Not Mentioned"

.field private static final ICC_LOCK_SETTINGS:Ljava/lang/String; = "com.android.settings.IccLockSettings"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_MT:Ljava/lang/String; = "mobiletrackerchecker"

.field private static final KEY_PHLOCK:Ljava/lang/String; = "phonelock"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final LOCATION_CATEGORY:Ljava/lang/String; = "location_category"

.field private static final LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final LOCATION_PDR:Ljava/lang/String; = "location_pdr"

.field private static final LOG_TAG:Ljava/lang/String; = "MT-SecSett"

.field private static final MAX_PHPWD:I = 0x8

.field private static final MT_REQUEST_CODE_SETTINGS:I = 0x3ea

.field private static final NV_PHPWDSTATE:Ljava/lang/String; = "nv_storephpwdstate"

.field private static final NV_PHPWDSTATE_FIRST:Ljava/lang/String; = "nv_storephpwdstate_first"

.field private static final NV_STOREPHPWD:Ljava/lang/String; = "nv_storephpwd"

.field private static final PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field confirmPhPwd:Ljava/lang/String;

.field enterPhPwd:Ljava/lang/String;

.field firstSet:Z

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mConfirmPhonePwdET:Landroid/widget/EditText;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnterPhonePwdET:Landroid/widget/EditText;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPwdDlgOn:Z

.field private mIsUnlockDlgOn:Z

.field private mKeyState:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mNewPhonePwdET:Landroid/widget/EditText;

.field private mNewPwd:Landroid/widget/EditText;

.field private mOldPwd:Landroid/widget/EditText;

.field private mPdr:Landroid/preference/CheckBoxPreference;

.field private mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

.field private mPhLockPreferences:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSimlockPreferences:Landroid/preference/PreferenceScreen;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

.field private mTrackerPreferences:Landroid/preference/Preference;

.field private mUnlockOldPwd:Landroid/widget/EditText;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field mshowDlg:Z

.field newPhPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->newPhPwd:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->confirmPhPwd:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->enterPhPwd:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mIsUnlockDlgOn:Z

    .line 153
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 175
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    return-void
.end method

.method private ValidateMTData()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "none"

    .line 885
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 887
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    .line 888
    .local v6, sender:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Not Mentioned"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    .line 907
    :goto_0
    return v7

    .line 891
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, rec1:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "none"

    invoke-virtual {v1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 893
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, rec2:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "none"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 895
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, rec3:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "none"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 897
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, rec4:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "none"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 899
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v5

    .line 900
    .local v5, rec5:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "none"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    move v7, v9

    .line 901
    goto :goto_0

    .line 907
    .end local v2           #rec2:Ljava/lang/String;
    .end local v3           #rec3:Ljava/lang/String;
    .end local v4           #rec4:Ljava/lang/String;
    .end local v5           #rec5:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mNewPwd:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mOldPwd:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SecuritySettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings;->selectPdrDescription(ZZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/SecuritySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings/SecuritySettings;->mIsUnlockDlgOn:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mUnlockOldPwd:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings/SecuritySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/SecuritySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/settings/SecuritySettings;->mKeyState:I

    return p1
.end method

.method private createPhonePasswordDialog(Z)Landroid/app/Dialog;
    .locals 13
    .parameter "mtcheckPref"

    .prologue
    const v12, 0x7f0b0042

    const v11, 0x7f0b003e

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v5, 0x8

    .line 943
    const v0, 0x7f03002c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 946
    .local v2, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, storedPhPwd:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    iput-boolean v10, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 950
    .local v8, msg:Ljava/lang/String;
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 951
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 952
    .local v7, hintTV:Landroid/widget/TextView;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    .line 955
    const v0, 0x7f0b0043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    .line 957
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 958
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 960
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 963
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 964
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mConfirmPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 983
    .end local v7           #hintTV:Landroid/widget/TextView;
    .end local v8           #msg:Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/android/internal/util/NVStore;

    invoke-direct {v4, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 985
    .local v4, filenv:Lcom/android/internal/util/NVStore;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090460

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v0, Lcom/android/settings/SecuritySettings$8;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;Landroid/view/View;Ljava/lang/String;Lcom/android/internal/util/NVStore;Z)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v5, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1083
    .local v6, dialog:Landroid/app/Dialog;
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    if-nez v0, :cond_0

    .line 1084
    const v0, 0x7f090461

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1086
    :cond_0
    new-instance v0, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v0, p0, v6}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1094
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1096
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1097
    return-object v6

    .line 966
    .end local v4           #filenv:Lcom/android/internal/util/NVStore;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/SecuritySettings;->firstSet:Z

    .line 967
    const v0, 0x7f0b007e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 968
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 969
    const v0, 0x7f0b007f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 971
    const v0, 0x7f0b0043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 972
    const v0, 0x7f0b0080

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 974
    const v0, 0x7f0b0081

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 975
    const v0, 0x7f0b0081

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    .line 977
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 978
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 979
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEnterPhonePwdET:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 212
    .local v9, root:Landroid/preference/PreferenceScreen;
    if-eqz v9, :cond_0

    .line 213
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 215
    :cond_0
    const v12, 0x7f040018

    invoke-virtual {p0, v12}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "location_network"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "location_gps"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "assisted_gps"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "location_pdr"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    .line 231
    .local v8, pm:Landroid/preference/PreferenceManager;
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-nez v12, :cond_2

    .line 232
    const v12, 0x7f040019

    invoke-virtual {p0, v12}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 252
    :goto_0
    const-string v12, "visiblepattern"

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 255
    const-string v12, "unlock_tactile_feedback"

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 257
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 260
    .local v0, activePhoneType:I
    const/4 v12, 0x2

    if-eq v12, v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    .line 276
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    const v13, 0x7f09019a

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 278
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v5, intent:Landroid/content/Intent;
    const-string v12, "com.android.settings"

    const-string v13, "com.android.settings.IccLockSettings"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 282
    new-instance v11, Landroid/preference/PreferenceCategory;

    invoke-direct {v11, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 283
    .local v11, simLockCat:Landroid/preference/PreferenceCategory;
    const v12, 0x7f09019b

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 284
    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mSimlockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    .end local v5           #intent:Landroid/content/Intent;
    .end local v11           #simLockCat:Landroid/preference/PreferenceCategory;
    :cond_1
    new-instance v12, Landroid/preference/CheckBoxPreference;

    invoke-direct {v12, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    .line 296
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "mobiletrackerchecker"

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 297
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f090440

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 298
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0904e0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    .line 301
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    const v13, 0x7f090441

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V

    .line 303
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    const v13, 0x7f090447

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 305
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 306
    .local v6, mTCat:Landroid/preference/PreferenceCategory;
    const v12, 0x7f09043f

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 307
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 309
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    invoke-virtual {v6, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    new-instance v7, Landroid/preference/PreferenceCategory;

    invoke-direct {v7, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 315
    .local v7, passwordsCat:Landroid/preference/PreferenceCategory;
    const v12, 0x7f0900be

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 316
    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 318
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 319
    .local v10, showPassword:Landroid/preference/CheckBoxPreference;
    const-string v12, "show_password"

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 320
    const v12, 0x7f0902d8

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 321
    const v12, 0x7f0902d9

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 322
    invoke-virtual {v10, v14}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 323
    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 327
    .local v4, devicePoliciesCat:Landroid/preference/PreferenceCategory;
    const v12, 0x7f0900e1

    invoke-virtual {v4, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 328
    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 331
    .local v2, deviceAdminButton:Landroid/preference/Preference;
    const v12, 0x7f0900e2

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 332
    const v12, 0x7f0900e3

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 333
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v3, deviceAdminIntent:Landroid/content/Intent;
    const-class v12, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v3, p0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 336
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, credentialsCat:Landroid/preference/PreferenceCategory;
    const v12, 0x7f0903ec

    invoke-virtual {v1, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 341
    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-static {v12, v1, v14}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$400(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 344
    return-object v9

    .line 234
    .end local v0           #activePhoneType:I
    .end local v1           #credentialsCat:Landroid/preference/PreferenceCategory;
    .end local v2           #deviceAdminButton:Landroid/preference/Preference;
    .end local v3           #deviceAdminIntent:Landroid/content/Intent;
    .end local v4           #devicePoliciesCat:Landroid/preference/PreferenceCategory;
    .end local v6           #mTCat:Landroid/preference/PreferenceCategory;
    .end local v7           #passwordsCat:Landroid/preference/PreferenceCategory;
    .end local v10           #showPassword:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    .line 236
    :sswitch_0
    const v12, 0x7f04001b

    invoke-virtual {p0, v12}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 239
    :sswitch_1
    const v12, 0x7f04001d

    invoke-virtual {p0, v12}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 243
    :sswitch_2
    const v12, 0x7f04001a

    invoke-virtual {p0, v12}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 494
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private selectPdrDescription(ZZ)V
    .locals 6
    .parameter "selection"
    .parameter "dontask"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "location_pdr_enabled"

    .line 507
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPdrDescription : selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and dont\'ask is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-ne p2, v3, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_location_pdr_desc"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    :cond_0
    if-ne p1, v3, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showPDRDescription()V
    .locals 7

    .prologue
    .line 523
    const v4, 0x7f030042

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 525
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b00d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 526
    .local v2, tvPdrDesc:Landroid/widget/TextView;
    const v4, 0x7f0b00d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 527
    .local v0, cbDontAsk:Landroid/widget/CheckBox;
    new-instance v4, Lcom/android/settings/SecuritySettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/SecuritySettings$5;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 549
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 550
    return-void
.end method

.method private updateMTStatusSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 859
    const-string v1, "MT_Setting_Pref"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/SecuritySettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MT_OPS_Signed_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 864
    .local v0, ops_signed_in:Z
    if-nez v0, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 867
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 882
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 877
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090445

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 880
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090446

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 475
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 477
    .local v0, gpsEnabled:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v3, "network"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 479
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 483
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    const-string v3, "location_pdr_enabled"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 488
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 491
    :cond_1
    return-void

    :cond_2
    move v3, v6

    .line 481
    goto :goto_0

    :cond_3
    move v3, v6

    .line 487
    goto :goto_1
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NVStore;-><init>(Landroid/content/Context;)V

    .line 914
    .local v0, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method ValidatePhPwd(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "tview"
    .parameter "storedPwd"
    .parameter "newPwd"
    .parameter "confirmPwd"
    .parameter "enterPhPwd"

    .prologue
    const v6, 0x7f09045f

    const v5, 0x7f09045e

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1104
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    :cond_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1137
    :goto_0
    return v1

    .line 1108
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 1110
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1113
    goto :goto_0

    .line 1115
    .end local v0           #msg:Ljava/lang/String;
    :cond_3
    invoke-virtual {p3, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1116
    const v1, 0x7f09045c

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1117
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1118
    goto :goto_0

    .line 1122
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1123
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1124
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1125
    goto :goto_0

    .line 1126
    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    .restart local v0       #msg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1130
    goto :goto_0

    .line 1131
    .end local v0           #msg:Ljava/lang/String;
    :cond_6
    invoke-virtual {p5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1132
    const v1, 0x7f09045b

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1133
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v4

    .line 1134
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 1137
    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 502
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 504
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 193
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 195
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 197
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 199
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 207
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 208
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 384
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v9}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    .line 387
    .local v6, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v9, "unlock_set_or_change"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 388
    new-instance v4, Landroid/content/Intent;

    const-class v9, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v4, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v4, intent:Landroid/content/Intent;
    const/16 v9, 0x7b

    invoke-virtual {p0, v4, v9}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 467
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    :goto_1
    return v9

    .line 390
    :cond_1
    const-string v9, "lockenabled"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 391
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 392
    :cond_2
    const-string v9, "visiblepattern"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 393
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 394
    :cond_3
    const-string v9, "unlock_tactile_feedback"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 395
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 396
    :cond_4
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_6

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "show_password"

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 399
    :cond_6
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_7

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 402
    :cond_7
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_8

    .line 403
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 404
    .local v2, enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gps"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 407
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.GPS_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v3, i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    const-string v9, "SecuritySettings"

    const-string v10, "sendBroadcast : android.settings.GPS_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_0

    .line 412
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 414
    .end local v2           #enabled:Z
    .end local v3           #i:Landroid/content/Intent;
    :cond_8
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_a

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "assisted_gps_enabled"

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_3
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 417
    :cond_a
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_d

    .line 418
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "need_location_pdr_desc"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 420
    .local v7, needToAsk:I
    const-string v9, "SecuritySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Need to ask for pdr : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v9, 0x1

    if-ne v7, v9, :cond_b

    .line 422
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->showPDRDescription()V

    goto/16 :goto_0

    .line 425
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_pdr_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 428
    .end local v7           #needToAsk:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_pdr_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 430
    :cond_d
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mTrackerCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_e

    .line 431
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 432
    :cond_e
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mTrackerPreferences:Landroid/preference/Preference;

    if-ne p2, v9, :cond_10

    .line 434
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->ValidateMTData()Z

    move-result v9

    if-nez v9, :cond_f

    .line 435
    const-string v9, "ril.IMSI"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, IMSI:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 437
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 438
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090486

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090487

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 440
    const v9, 0x1080027

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902a0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v10, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 446
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 447
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 450
    .end local v0           #IMSI:Ljava/lang/String;
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    :cond_f
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/SecuritySettings;->createPhonePasswordDialog(Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 451
    :cond_10
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_0

    .line 453
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getPhonePassword()Ljava/lang/String;

    move-result-object v8

    .line 454
    .local v8, storedPhPwd:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 458
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.CALLFWD_SMS_RECEIVED_SER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "nv_storephpwdstate"

    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mPhLockCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "1"

    :goto_4
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 460
    :cond_11
    const-string v10, "0"

    goto :goto_4
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 349
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/android/settings/SecuritySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 357
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateMTStatusSummary()V

    .line 374
    return-void

    .line 364
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v3, 0x0

    .line 919
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 923
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    if-eqz v1, :cond_0

    .line 924
    iget v1, p0, Lcom/android/settings/SecuritySettings;->mKeyState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 925
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNewPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 929
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    .line 932
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mIsUnlockDlgOn:Z

    if-eqz v1, :cond_1

    .line 933
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUnlockOldPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 934
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mIsUnlockDlgOn:Z

    .line 936
    :cond_1
    return-void

    .line 927
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mOldPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
