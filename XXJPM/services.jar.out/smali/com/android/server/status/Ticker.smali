.class abstract Lcom/android/server/status/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/Ticker$Segment;
    }
.end annotation


# static fields
.field private static final TICKER_SEGMENT_DELAY:I = 0xbb8


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V
    .locals 5
    .parameter "context"
    .parameter "sb"

    .prologue
    const v4, 0x10a0025

    const v3, 0x10a0024

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Lcom/android/server/status/Ticker$1;

    invoke-direct {v1, p0}, Lcom/android/server/status/Ticker$1;-><init>(Lcom/android/server/status/Ticker;)V

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 142
    const v1, 0x1020202

    invoke-virtual {p2, v1}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mTickerView:Landroid/view/View;

    .line 144
    const v1, 0x1020203

    invoke-virtual {p2, v1}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 145
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 150
    const v1, 0x1020204

    invoke-virtual {p2, v1}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextSwitcher;

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 151
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v1, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/status/Ticker;->mPaint:Landroid/text/TextPaint;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/status/Ticker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/status/Ticker;)Landroid/widget/ImageSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/status/Ticker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/status/Ticker;->scheduleAdvance()V

    return-void
.end method

.method private scheduleAdvance()V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/status/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "n"
    .parameter "icon"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 162
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    .local v1, initialCount:I
    new-instance v2, Lcom/android/server/status/Ticker$Segment;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/status/Ticker$Segment;-><init>(Lcom/android/server/status/Ticker;Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 168
    .local v2, newSegment:Lcom/android/server/status/Ticker$Segment;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 169
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/Ticker$Segment;

    .line 170
    .local v3, seg:Lcom/android/server/status/Ticker$Segment;
    iget v4, p1, Lcom/android/server/status/NotificationData;->id:I

    iget-object v5, v3, Lcom/android/server/status/Ticker$Segment;->notificationData:Lcom/android/server/status/NotificationData;

    iget v5, v5, Lcom/android/server/status/NotificationData;->id:I

    if-ne v4, v5, :cond_1

    iget-object v4, p1, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/status/Ticker$Segment;->notificationData:Lcom/android/server/status/NotificationData;

    iget-object v5, v5, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v3           #seg:Lcom/android/server/status/Ticker$Segment;
    :cond_0
    :goto_1
    return-void

    .line 168
    .restart local v3       #seg:Lcom/android/server/status/Ticker$Segment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v3           #seg:Lcom/android/server/status/Ticker$Segment;
    :cond_2
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/Ticker$Segment;

    .line 182
    .restart local v3       #seg:Lcom/android/server/status/Ticker$Segment;
    iput-boolean v6, v3, Lcom/android/server/status/Ticker$Segment;->first:Z

    .line 184
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4, v6}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 185
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v4}, Landroid/widget/ImageSwitcher;->reset()V

    .line 186
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v5, v3, Lcom/android/server/status/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v6}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 189
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4}, Landroid/widget/TextSwitcher;->reset()V

    .line 190
    iget-object v4, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3}, Lcom/android/server/status/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/status/Ticker;->tickerStarting()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/status/Ticker;->scheduleAdvance()V

    goto :goto_1
.end method

.method halt()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/status/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/status/Ticker;->tickerHalting()V

    .line 201
    return-void
.end method

.method reflowText()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/server/status/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/Ticker$Segment;

    .line 206
    .local v0, seg:Lcom/android/server/status/Ticker$Segment;
    invoke-virtual {v0}, Lcom/android/server/status/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/status/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0           #seg:Lcom/android/server/status/Ticker$Segment;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method abstract tickerDone()V
.end method

.method abstract tickerHalting()V
.end method

.method abstract tickerStarting()V
.end method
