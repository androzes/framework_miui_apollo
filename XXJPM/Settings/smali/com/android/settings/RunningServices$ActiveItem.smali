.class Lcom/android/settings/RunningServices$ActiveItem;
.super Ljava/lang/Object;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/settings/RunningServices$ViewHolder;

.field mItem:Lcom/android/settings/RunningServices$BaseItem;

.field mRootView:Landroid/view/View;

.field mService:Landroid/app/ActivityManager$RunningServiceInfo;

.field final synthetic this$0:Lcom/android/settings/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/settings/RunningServices;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/RunningServices$ActiveItem;->this$0:Lcom/android/settings/RunningServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    iget-boolean v1, v1, Lcom/android/settings/RunningServices$BaseItem;->mIsProcess:Z

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    iget-object v1, v1, Lcom/android/settings/RunningServices$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    iget-object v1, v1, Lcom/android/settings/RunningServices$BaseItem;->mSizeStr:Ljava/lang/String;

    move-object v0, v1

    .line 131
    .local v0, size:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    iget-object v1, v1, Lcom/android/settings/RunningServices$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    iput-object v0, v1, Lcom/android/settings/RunningServices$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mHolder:Lcom/android/settings/RunningServices$ViewHolder;

    iget-object v1, v1, Lcom/android/settings/RunningServices$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0           #size:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 130
    :cond_1
    const-string v1, ""

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    iget-wide v1, v1, Lcom/android/settings/RunningServices$BaseItem;->mActiveSince:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mHolder:Lcom/android/settings/RunningServices$ViewHolder;

    iget-object v1, v1, Lcom/android/settings/RunningServices$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/RunningServices$ActiveItem;->this$0:Lcom/android/settings/RunningServices;

    iget-object v2, v2, Lcom/android/settings/RunningServices;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/settings/RunningServices$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/android/settings/RunningServices$ActiveItem;->mHolder:Lcom/android/settings/RunningServices$ViewHolder;

    iget-object v1, v1, Lcom/android/settings/RunningServices$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
