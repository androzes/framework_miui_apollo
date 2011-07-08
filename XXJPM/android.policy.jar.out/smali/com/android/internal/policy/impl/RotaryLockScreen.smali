.class Lcom/android/internal/policy/impl/RotaryLockScreen;
.super Landroid/widget/LinearLayout;
.source "RotaryLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/RotaryLockScreen$4;,
        Lcom/android/internal/policy/impl/RotaryLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "RotaryLockScreen"

.field private static mBatteryInfoState:I

.field private static mPlugedState:I


# instance fields
.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mCreatedInPortrait:Z

.field private mDate:Landroid/widget/TextView;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDisableMenuKeyInLockScreen:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mRotary:Lcom/android/internal/widget/RotarySelector;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryInfoState:I

    .line 104
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    .line 68
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPluggedIn:Z

    .line 74
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    .line 76
    iput-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object p2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 152
    iput-object p3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 153
    iput-object p4, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.monkey"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mDisableMenuKeyInLockScreen:Z

    .line 159
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCreatedInPortrait:Z

    .line 161
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCreatedInPortrait:Z

    if-eqz v1, :cond_1

    .line 163
    const v1, 0x109008f

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    :goto_1
    const v1, 0x10201be

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 169
    const v1, 0x102005b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mTime:Landroid/widget/TextView;

    .line 170
    const v1, 0x102005a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mDate:Landroid/widget/TextView;

    .line 171
    const v1, 0x10201c9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    .line 172
    const v1, 0x10201ca

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    .line 174
    const v1, 0x10201b9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x10402a4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 176
    const v1, 0x10201cb

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 177
    const v1, 0x102029f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RotarySelector;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/RotaryLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/RotaryLockScreen$1;-><init>(Lcom/android/internal/policy/impl/RotaryLockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/RotaryLockScreen;->setFocusable(Z)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/RotaryLockScreen;->setFocusableInTouchMode(Z)V

    .line 186
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->setDescendantFocusability(I)V

    .line 188
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 189
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 190
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RotarySelector;->setOnDialTriggerListener(Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    const v2, 0x108019c

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RotarySelector;->setLeftHandleResource(I)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eqz v2, :cond_3

    const v2, 0x108019a

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RotarySelector;->setRightHandleResource(I)V

    .line 201
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/RotaryLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 202
    return-void

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move v1, v4

    .line 155
    goto/16 :goto_0

    .line 165
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v1, 0x109008f

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    :cond_2
    move v1, v4

    .line 193
    goto :goto_2

    .line 197
    :cond_3
    const v2, 0x108019b

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RotaryLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 515
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 522
    :goto_0
    return-object v0

    .line 517
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 520
    goto :goto_0

    .line 522
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/RotaryLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 418
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 419
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    .line 438
    :goto_1
    return-object v1

    .line 416
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 422
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 438
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 424
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 426
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 428
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 430
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 432
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 434
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 436
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    goto :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getLockScreenDateFormat()Ljava/text/DateFormat;
    .locals 7

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 354
    .local v0, adjusted:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 356
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #adjusted:Ljava/text/SimpleDateFormat;
    .local v1, adjusted:Ljava/text/SimpleDateFormat;
    move-object v0, v1

    .end local v1           #adjusted:Ljava/text/SimpleDateFormat;
    .restart local v0       #adjusted:Ljava/text/SimpleDateFormat;
    move-object v4, v1

    .line 365
    .end local v2           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v4

    .line 359
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 362
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v4, "RotaryLockScreen"

    const-string v5, "couldn\'t finnagle our custom date format :("

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    goto :goto_0
.end method

.method private putEmergencyBelow(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 408
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 409
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    return-void
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateStatusLines()V

    .line 300
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 449
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 450
    iput-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    .line 475
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 460
    :cond_1
    sget v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    if-ne v0, v2, :cond_6

    .line 461
    sget v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryInfoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_2
    sget v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryInfoState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10403ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 466
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_5

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    .line 470
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 467
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    if-gtz v0, :cond_4

    .line 468
    iput-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    goto :goto_1

    .line 473
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 343
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPluggedIn:Z

    .line 284
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryInfoState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryInfoState:I

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryPlugedState()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    .line 291
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateLayout(Lcom/android/internal/policy/impl/RotaryLockScreen$Status;)V

    .line 294
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->refreshBatteryStringAndIcon()V

    .line 295
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->refreshAlarmDisplay()V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mTimeFormat:Ljava/text/DateFormat;

    .line 298
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getLockScreenDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mDateFormat:Ljava/text/DateFormat;

    .line 299
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->refreshTimeAndDateDisplay()V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateStatusLines()V

    .line 301
    return-void
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 3
    .parameter "textView"
    .parameter "text"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 267
    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    iput-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 274
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/RotaryLockScreen$2;-><init>(Lcom/android/internal/policy/impl/RotaryLockScreen;Landroid/widget/TextView;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    new-instance v0, Lcom/android/internal/policy/impl/RotaryLockScreen$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/RotaryLockScreen$3;-><init>(Lcom/android/internal/policy/impl/RotaryLockScreen;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/RotaryLockScreen$Status;)V
    .locals 7
    .parameter "status"

    .prologue
    const v6, 0x10402a2

    const v5, 0x10201cb

    const/4 v2, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 445
    sget-object v0, Lcom/android/internal/policy/impl/RotaryLockScreen$4;->$SwitchMap$com$android$internal$policy$impl$RotaryLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 512
    :goto_0
    return-void

    .line 448
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x104029f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    const v0, 0x10201d4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->putEmergencyBelow(I)V

    goto :goto_0

    .line 482
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10402b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/RotaryLockScreen;->putEmergencyBelow(I)V

    goto/16 :goto_0

    .line 493
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 502
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCarrier:Landroid/widget/TextView;

    const v1, 0x10402b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/RotaryLockScreen;->putEmergencyBelow(I)V

    goto/16 :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    const v1, 0x108019a

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RotarySelector;->setRightHandleResource(I)V

    .line 249
    return-void

    .line 242
    :cond_0
    const v1, 0x108019b

    goto :goto_0
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public onDialTrigger(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 231
    if-ne p2, v4, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-ne p2, v6, :cond_0

    .line 235
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    .line 236
    iget-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 238
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eqz v3, :cond_4

    const v3, 0x108019a

    move v0, v3

    .line 241
    .local v0, handleIcon:I
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eqz v3, :cond_5

    const v3, 0x108019a

    move v2, v3

    .line 244
    .local v2, toastIcon:I
    :goto_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mRotary:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/RotarySelector;->setRightHandleResource(I)V

    .line 245
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040143

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 248
    .local v1, message:Ljava/lang/String;
    :goto_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/policy/impl/RotaryLockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 249
    iget-object v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #handleIcon:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #toastIcon:I
    :cond_2
    move v3, v5

    .line 235
    goto :goto_1

    :cond_3
    move v4, v6

    .line 236
    goto :goto_2

    .line 238
    :cond_4
    const v3, 0x108019b

    move v0, v3

    goto :goto_3

    .line 241
    .restart local v0       #handleIcon:I
    :cond_5
    const v3, 0x108019b

    move v2, v3

    goto :goto_4

    .line 245
    .restart local v2       #toastIcon:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040144

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_5
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 256
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mDisableMenuKeyInLockScreen:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 1
    .parameter "isKeyboardOpen"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 544
    :cond_0
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 1
    .parameter "inPortrait"

    .prologue
    .line 535
    .line 536
    .line 538
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 737
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    .line 415
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPluggedIn:Z

    .line 416
    iput p3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    .line 419
    sget v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    if-gez v0, :cond_0

    .line 420
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->refreshBatteryStringAndIcon()V

    .line 423
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateStatusLines()V

    .line 424
    return-void

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateLayout(Lcom/android/internal/policy/impl/RotaryLockScreen$Status;)V

    .line 437
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateLayout(Lcom/android/internal/policy/impl/RotaryLockScreen$Status;)V

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 719
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 625
    if-nez p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 626
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 627
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mSilentMode:Z

    .line 628
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateRightTabResources()V

    .line 630
    :cond_0
    return-void

    .line 625
    .end local v0           #silent:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mStatus:Lcom/android/internal/policy/impl/RotaryLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateLayout(Lcom/android/internal/policy/impl/RotaryLockScreen$Status;)V

    .line 530
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateStatusLines()V

    .line 531
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->refreshTimeAndDateDisplay()V

    .line 339
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 4
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    sput p1, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryInfoState:I

    .line 430
    iput p2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    .line 431
    sget v0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryInfoState:I

    if-nez v0, :cond_1

    .line 432
    iget v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mBatteryLevel:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 433
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    .line 436
    :goto_0
    sput v3, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    .line 444
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->refreshBatteryStringAndIcon()V

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->updateStatusLines()V

    .line 446
    return-void

    .line 435
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    goto :goto_0

    .line 439
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen;->mShowingBatteryInfo:Z

    .line 440
    sput v2, Lcom/android/internal/policy/impl/RotaryLockScreen;->mPlugedState:I

    goto :goto_1
.end method
