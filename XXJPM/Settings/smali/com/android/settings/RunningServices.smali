.class public Lcom/android/settings/RunningServices;
.super Landroid/app/ListActivity;
.source "RunningServices.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RunningServices$BackgroundHandler;,
        Lcom/android/settings/RunningServices$LinearColorBar;,
        Lcom/android/settings/RunningServices$ServiceListAdapter;,
        Lcom/android/settings/RunningServices$ViewHolder;,
        Lcom/android/settings/RunningServices$TimeTicker;,
        Lcom/android/settings/RunningServices$State;,
        Lcom/android/settings/RunningServices$ServiceProcessComparator;,
        Lcom/android/settings/RunningServices$ProcessItem;,
        Lcom/android/settings/RunningServices$ServiceItem;,
        Lcom/android/settings/RunningServices$BaseItem;,
        Lcom/android/settings/RunningServices$ActiveItem;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIMES:I = 0x1

.field static final PAGE_SIZE:J = 0x1000L

.field static final TAG:Ljava/lang/String; = "RunningServices"

.field static final TIME_UPDATE_DELAY:J = 0x3e8L


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/RunningServices$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBackgroundThread:Landroid/os/HandlerThread;

.field mBuffer:[B

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings/RunningServices$LinearColorBar;

.field mCurDialog:Landroid/app/Dialog;

.field mCurSelected:Lcom/android/settings/RunningServices$BaseItem;

.field mForegroundProcessText:Landroid/widget/TextView;

.field final mHandler:Landroid/os/Handler;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mProcessBgColor:I

.field mState:Lcom/android/settings/RunningServices$State;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mActiveItems:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mBuilder:Ljava/lang/StringBuilder;

    .line 109
    iput v4, p0, Lcom/android/settings/RunningServices;->mLastNumBackgroundProcesses:I

    .line 110
    iput v4, p0, Lcom/android/settings/RunningServices;->mLastNumForegroundProcesses:I

    .line 111
    iput v4, p0, Lcom/android/settings/RunningServices;->mLastNumServiceProcesses:I

    .line 112
    iput-wide v2, p0, Lcom/android/settings/RunningServices;->mLastBackgroundProcessMemory:J

    .line 113
    iput-wide v2, p0, Lcom/android/settings/RunningServices;->mLastForegroundProcessMemory:J

    .line 114
    iput-wide v2, p0, Lcom/android/settings/RunningServices;->mLastServiceProcessMemory:J

    .line 115
    iput-wide v2, p0, Lcom/android/settings/RunningServices;->mLastAvailMemory:J

    .line 119
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    .line 928
    new-instance v0, Lcom/android/settings/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RunningServices$1;-><init>(Lcom/android/settings/RunningServices;)V

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 968
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 969
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 970
    move v0, p2

    .line 971
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 973
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 974
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 976
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 977
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 981
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 979
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 981
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 955
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 956
    .local v0, N:I
    add-int v2, p2, v0

    array-length v3, p1

    if-lt v2, v3, :cond_0

    move v2, v4

    .line 964
    :goto_0
    return v2

    .line 959
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 960
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 961
    goto :goto_0

    .line 959
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 964
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private readAvailMem()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 986
    const-wide/16 v6, 0x0

    .line 987
    .local v6, memFree:J
    const-wide/16 v4, 0x0

    .line 988
    .local v4, memCached:J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v8, "/proc/meminfo"

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 989
    .local v2, is:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    invoke-virtual {v2, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 990
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 991
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    array-length v0, v8

    .line 992
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    cmp-long v8, v6, v10

    if-eqz v8, :cond_0

    cmp-long v8, v4, v10

    if-nez v8, :cond_4

    .line 993
    :cond_0
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    const-string v9, "MemFree"

    invoke-direct {p0, v8, v1, v9}, Lcom/android/settings/RunningServices;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 994
    add-int/lit8 v1, v1, 0x7

    .line 995
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    invoke-direct {p0, v8, v1}, Lcom/android/settings/RunningServices;->extractMemValue([BI)J

    move-result-wide v6

    .line 1000
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    aget-byte v8, v8, v1

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 996
    :cond_2
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    const-string v9, "Cached"

    invoke-direct {p0, v8, v1, v9}, Lcom/android/settings/RunningServices;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 997
    add-int/lit8 v1, v1, 0x6

    .line 998
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBuffer:[B

    invoke-direct {p0, v8, v1}, Lcom/android/settings/RunningServices;->extractMemValue([BI)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_1

    .line 992
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1004
    :cond_4
    add-long v8, v6, v4

    .line 1008
    .end local v0           #BUFLEN:I
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    :goto_2
    return-wide v8

    .line 1006
    :catch_0
    move-exception v8

    :goto_3
    move-wide v8, v10

    .line 1008
    goto :goto_2

    .line 1005
    :catch_1
    move-exception v8

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mCurSelected:Lcom/android/settings/RunningServices$BaseItem;

    if-eqz v0, :cond_0

    .line 1122
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/settings/RunningServices;->mCurSelected:Lcom/android/settings/RunningServices$BaseItem;

    check-cast v0, Lcom/android/settings/RunningServices$ServiceItem;

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices;->stopService(Landroid/content/Intent;)Z

    .line 1124
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/RunningServices$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1128
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1013
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1014
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mAm:Landroid/app/ActivityManager;

    .line 1015
    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RunningServices$State;

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    .line 1016
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lcom/android/settings/RunningServices$State;

    invoke-direct {v0}, Lcom/android/settings/RunningServices$State;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    .line 1019
    :cond_0
    const v0, -0xafafb0

    iput v0, p0, Lcom/android/settings/RunningServices;->mProcessBgColor:I

    .line 1020
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices;->setContentView(I)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/RunningServices$ServiceListAdapter;

    iget-object v2, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/RunningServices$ServiceListAdapter;-><init>(Lcom/android/settings/RunningServices;Lcom/android/settings/RunningServices$State;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1023
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RunningServices$LinearColorBar;

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mColorBar:Lcom/android/settings/RunningServices$LinearColorBar;

    .line 1024
    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 1025
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RunningServices;->mForegroundProcessText:Landroid/widget/TextView;

    .line 1028
    const-string v0, "ro.SECONDARY_SERVER_MEM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/RunningServices;->SECONDARY_SERVER_MEM:J

    .line 1030
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1167
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mCurDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mCurDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1171
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1081
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/RunningServices$BaseItem;

    .line 1082
    .local v8, bi:Lcom/android/settings/RunningServices$BaseItem;
    iget-boolean v2, v8, Lcom/android/settings/RunningServices$BaseItem;->mIsProcess:Z

    if-nez v2, :cond_2

    .line 1083
    move-object v0, v8

    check-cast v0, Lcom/android/settings/RunningServices$ServiceItem;

    move-object v13, v0

    .line 1084
    .local v13, si:Lcom/android/settings/RunningServices$ServiceItem;
    iget-object v2, v13, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v2, :cond_1

    .line 1085
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/RunningServices;->mCurSelected:Lcom/android/settings/RunningServices$BaseItem;

    .line 1086
    iget-object v2, p0, Lcom/android/settings/RunningServices;->mAm:Landroid/app/ActivityManager;

    iget-object v3, v13, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1088
    .local v12, pi:Landroid/app/PendingIntent;
    if-eqz v12, :cond_0

    .line 1090
    :try_start_0
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1008

    const/high16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/RunningServices;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1118
    .end local v12           #pi:Landroid/app/PendingIntent;
    .end local v13           #si:Lcom/android/settings/RunningServices$ServiceItem;
    :cond_0
    :goto_0
    return-void

    .line 1094
    .restart local v12       #pi:Landroid/app/PendingIntent;
    .restart local v13       #si:Lcom/android/settings/RunningServices$ServiceItem;
    :catch_0
    move-exception v2

    move-object v10, v2

    .line 1095
    .local v10, e:Landroid/content/IntentSender$SendIntentException;
    const-string v2, "RunningServices"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1096
    .end local v10           #e:Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v2

    move-object v10, v2

    .line 1097
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "RunningServices"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1098
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    move-object v10, v2

    .line 1099
    .local v10, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "RunningServices"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1103
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    .end local v12           #pi:Landroid/app/PendingIntent;
    :cond_1
    iput-object v8, p0, Lcom/android/settings/RunningServices;->mCurSelected:Lcom/android/settings/RunningServices$BaseItem;

    .line 1104
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1105
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0902c1

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902c2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v13, Lcom/android/settings/RunningServices$ServiceItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1109
    .local v11, msg:Ljava/lang/String;
    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1110
    const v2, 0x7f0902c3

    invoke-virtual {v9, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1111
    const v2, 0x7f0902c4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1112
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1113
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RunningServices;->mCurDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1116
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v11           #msg:Ljava/lang/String;
    .end local v13           #si:Lcom/android/settings/RunningServices$ServiceItem;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/RunningServices;->mCurSelected:Lcom/android/settings/RunningServices$BaseItem;

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1132
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 1133
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1136
    iput-object v2, p0, Lcom/android/settings/RunningServices;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 1137
    iput-object v2, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    .line 1139
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1143
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 1144
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-object v2, p0, Lcom/android/settings/RunningServices;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/RunningServices$State;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/RunningServices;->refreshUi(Z)V

    .line 1145
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RunningServices"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/RunningServices;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 1146
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1147
    new-instance v1, Lcom/android/settings/RunningServices$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/RunningServices;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/RunningServices$BackgroundHandler;-><init>(Lcom/android/settings/RunningServices;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    .line 1148
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1150
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1151
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/RunningServices$BackgroundHandler;->removeMessages(I)V

    .line 1152
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/RunningServices$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/android/settings/RunningServices;->mBackgroundHandler:Lcom/android/settings/RunningServices$BackgroundHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/RunningServices$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1154
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    return-object v0
.end method

.method refreshUi(Z)V
    .locals 14
    .parameter "dataChanged"

    .prologue
    const-wide/16 v12, 0x0

    .line 1033
    if-eqz p1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/settings/RunningServices$ServiceListAdapter;

    move-object v0, v7

    check-cast v0, Lcom/android/settings/RunningServices$ServiceListAdapter;

    move-object v1, v0

    .line 1035
    .local v1, adapter:Lcom/android/settings/RunningServices$ServiceListAdapter;
    invoke-virtual {v1}, Lcom/android/settings/RunningServices$ServiceListAdapter;->refreshItems()V

    .line 1036
    invoke-virtual {v1}, Lcom/android/settings/RunningServices$ServiceListAdapter;->notifyDataSetChanged()V

    .line 1041
    .end local v1           #adapter:Lcom/android/settings/RunningServices$ServiceListAdapter;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RunningServices;->readAvailMem()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/settings/RunningServices;->SECONDARY_SERVER_MEM:J

    sub-long v2, v7, v9

    .line 1042
    .local v2, availMem:J
    cmp-long v7, v2, v12

    if-gez v7, :cond_1

    .line 1043
    const-wide/16 v2, 0x0

    .line 1046
    :cond_1
    iget-object v7, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-object v7, v7, Lcom/android/settings/RunningServices$State;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1047
    :try_start_0
    iget v8, p0, Lcom/android/settings/RunningServices;->mLastNumBackgroundProcesses:I

    iget-object v9, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget v9, v9, Lcom/android/settings/RunningServices$State;->mNumBackgroundProcesses:I

    if-ne v8, v9, :cond_2

    iget-wide v8, p0, Lcom/android/settings/RunningServices;->mLastBackgroundProcessMemory:J

    iget-object v10, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-wide v10, v10, Lcom/android/settings/RunningServices$State;->mBackgroundProcessMemory:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, p0, Lcom/android/settings/RunningServices;->mLastAvailMemory:J

    cmp-long v8, v8, v2

    if-eqz v8, :cond_3

    .line 1050
    :cond_2
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget v8, v8, Lcom/android/settings/RunningServices$State;->mNumBackgroundProcesses:I

    iput v8, p0, Lcom/android/settings/RunningServices;->mLastNumBackgroundProcesses:I

    .line 1051
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-wide v8, v8, Lcom/android/settings/RunningServices$State;->mBackgroundProcessMemory:J

    iput-wide v8, p0, Lcom/android/settings/RunningServices;->mLastBackgroundProcessMemory:J

    .line 1052
    iput-wide v2, p0, Lcom/android/settings/RunningServices;->mLastAvailMemory:J

    .line 1053
    cmp-long v8, v2, v12

    if-eqz v8, :cond_6

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1055
    .local v4, availStr:Ljava/lang/String;
    :goto_0
    iget-wide v8, p0, Lcom/android/settings/RunningServices;->mLastBackgroundProcessMemory:J

    invoke-static {p0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1056
    .local v5, sizeStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902c7

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/RunningServices;->mLastNumBackgroundProcesses:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    .end local v4           #availStr:Ljava/lang/String;
    .end local v5           #sizeStr:Ljava/lang/String;
    :cond_3
    iget v8, p0, Lcom/android/settings/RunningServices;->mLastNumForegroundProcesses:I

    iget-object v9, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget v9, v9, Lcom/android/settings/RunningServices$State;->mNumForegroundProcesses:I

    if-ne v8, v9, :cond_4

    iget-wide v8, p0, Lcom/android/settings/RunningServices;->mLastForegroundProcessMemory:J

    iget-object v10, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-wide v10, v10, Lcom/android/settings/RunningServices$State;->mForegroundProcessMemory:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1062
    :cond_4
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget v8, v8, Lcom/android/settings/RunningServices$State;->mNumForegroundProcesses:I

    iput v8, p0, Lcom/android/settings/RunningServices;->mLastNumForegroundProcesses:I

    .line 1063
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-wide v8, v8, Lcom/android/settings/RunningServices$State;->mForegroundProcessMemory:J

    iput-wide v8, p0, Lcom/android/settings/RunningServices;->mLastForegroundProcessMemory:J

    .line 1064
    iget-wide v8, p0, Lcom/android/settings/RunningServices;->mLastForegroundProcessMemory:J

    invoke-static {p0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1065
    .restart local v5       #sizeStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/RunningServices;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902c8

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/RunningServices;->mLastNumForegroundProcesses:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    .end local v5           #sizeStr:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget v8, v8, Lcom/android/settings/RunningServices$State;->mNumServiceProcesses:I

    iput v8, p0, Lcom/android/settings/RunningServices;->mLastNumServiceProcesses:I

    .line 1069
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mState:Lcom/android/settings/RunningServices$State;

    iget-wide v8, v8, Lcom/android/settings/RunningServices$State;->mServiceProcessMemory:J

    iput-wide v8, p0, Lcom/android/settings/RunningServices;->mLastServiceProcessMemory:J

    .line 1071
    iget-wide v8, p0, Lcom/android/settings/RunningServices;->mLastBackgroundProcessMemory:J

    add-long/2addr v8, v2

    iget-wide v10, p0, Lcom/android/settings/RunningServices;->mLastForegroundProcessMemory:J

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/RunningServices;->mLastServiceProcessMemory:J

    add-long/2addr v8, v10

    long-to-float v6, v8

    .line 1073
    .local v6, totalMem:F
    iget-object v8, p0, Lcom/android/settings/RunningServices;->mColorBar:Lcom/android/settings/RunningServices$LinearColorBar;

    iget-wide v9, p0, Lcom/android/settings/RunningServices;->mLastForegroundProcessMemory:J

    long-to-float v9, v9

    div-float/2addr v9, v6

    iget-wide v10, p0, Lcom/android/settings/RunningServices;->mLastServiceProcessMemory:J

    long-to-float v10, v10

    div-float/2addr v10, v6

    iget-wide v11, p0, Lcom/android/settings/RunningServices;->mLastBackgroundProcessMemory:J

    add-long/2addr v11, v2

    long-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/settings/RunningServices$LinearColorBar;->setRatios(FFF)V

    .line 1076
    monitor-exit v7

    .line 1077
    return-void

    .line 1053
    .end local v6           #totalMem:F
    :cond_6
    const-string v8, "0"

    move-object v4, v8

    goto/16 :goto_0

    .line 1076
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method
