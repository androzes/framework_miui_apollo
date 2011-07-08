.class Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3

.field private static day:Ljava/lang/String;

.field private static hour:Ljava/lang/String;

.field private static mFreeMem:J

.field private static min:Ljava/lang/String;

.field private static month:Ljava/lang/String;

.field private static sec:Ljava/lang/String;

.field private static sysdump_time:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/AppNotRespondingDialog;->mFreeMem:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HistoryRecord;)V
    .locals 11
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v7, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 67
    .local v4, res:Landroid/content/res/Resources;
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 70
    if-eqz p4, :cond_2

    iget-object v7, p4, Lcom/android/server/am/HistoryRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v2, v7

    .line 73
    .local v2, name1:Ljava/lang/CharSequence;
    :goto_0
    const/4 v3, 0x0

    .line 74
    .local v3, name2:Ljava/lang/CharSequence;
    iget-object v7, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 76
    if-eqz v2, :cond_3

    .line 77
    const v5, 0x104031f

    .line 95
    .local v5, resid:I
    :goto_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_0

    .line 96
    new-instance v1, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v1, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, mDataFileStats:Landroid/os/StatFs;
    const-string v7, "/data"

    invoke-virtual {v1, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    sput-wide v7, Lcom/android/server/am/AppNotRespondingDialog;->mFreeMem:J

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, cal:Ljava/util/Calendar;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/am/AppNotRespondingDialog;->month:Ljava/lang/String;

    .line 101
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/am/AppNotRespondingDialog;->day:Ljava/lang/String;

    .line 102
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/am/AppNotRespondingDialog;->hour:Ljava/lang/String;

    .line 103
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/am/AppNotRespondingDialog;->min:Ljava/lang/String;

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/AppNotRespondingDialog;->month:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/AppNotRespondingDialog;->day:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/AppNotRespondingDialog;->hour:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/AppNotRespondingDialog;->min:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/am/AppNotRespondingDialog;->sysdump_time:Ljava/lang/String;

    .line 107
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #mDataFileStats:Landroid/os/StatFs;
    :cond_0
    const/4 v6, 0x0

    .line 108
    .local v6, tmp_name:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 109
    const-string v7, "/data/log/dumpstate_app_anr.log"

    invoke-static {v7}, Landroid/os/Debug;->saveDumpmesg(Ljava/lang/String;)V

    .line 121
    :goto_2
    if-eqz v3, :cond_9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    const/4 v7, -0x1

    const v8, 0x1040323

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 128
    const/4 v7, -0x3

    const v8, 0x1040325

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 132
    iget-object v7, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    .line 133
    const/4 v7, -0x2

    const v8, 0x1040324

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 140
    :cond_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 141
    const v7, 0x104031e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x4000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application Not Responding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 70
    .end local v2           #name1:Ljava/lang/CharSequence;
    .end local v3           #name2:Ljava/lang/CharSequence;
    .end local v5           #resid:I
    .end local v6           #tmp_name:Ljava/lang/CharSequence;
    :cond_2
    const/4 v7, 0x0

    move-object v2, v7

    goto/16 :goto_0

    .line 79
    .restart local v2       #name1:Ljava/lang/CharSequence;
    .restart local v3       #name2:Ljava/lang/CharSequence;
    :cond_3
    move-object v2, v3

    .line 80
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 81
    const v5, 0x1040321

    .restart local v5       #resid:I
    goto/16 :goto_1

    .line 84
    .end local v5           #resid:I
    :cond_4
    if-eqz v2, :cond_5

    .line 85
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 86
    const v5, 0x1040320

    .restart local v5       #resid:I
    goto/16 :goto_1

    .line 88
    .end local v5           #resid:I
    :cond_5
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 89
    const v5, 0x1040322

    .restart local v5       #resid:I
    goto/16 :goto_1

    .line 111
    .restart local v6       #tmp_name:Ljava/lang/CharSequence;
    :cond_6
    if-eqz v3, :cond_7

    move-object v6, v3

    .line 112
    :goto_5
    sget-wide v7, Lcom/android/server/am/AppNotRespondingDialog;->mFreeMem:J

    const-wide/32 v9, 0xb71b00

    cmp-long v7, v7, v9

    if-ltz v7, :cond_8

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/log/dumpstate_app_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/AppNotRespondingDialog;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    const/16 v10, 0x5f

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_anr.log"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Debug;->saveDumpmesg(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object v6, v2

    .line 111
    goto :goto_5

    .line 115
    :cond_8
    const-string v7, "AppNotRespondingDialog"

    const-string v8, "An available memory usage is less than 12MB currently"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v7, "/data/log/dumpstate_app_anr.log"

    invoke-static {v7}, Landroid/os/Debug;->saveDumpmesg(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :cond_9
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 143
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x104031e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     - Use *#9900# to take log -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
