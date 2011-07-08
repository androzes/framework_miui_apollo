.class public Lcom/android/internal/widget/ContactHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "ContactHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;,
        Lcom/android/internal/widget/ContactHeaderWidget$PhotoQuery;,
        Lcom/android/internal/widget/ContactHeaderWidget$ContactQuery;,
        Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;
    }
.end annotation


# static fields
.field protected static final CONTACT_LOOKUP_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final EMAIL_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final EMAIL_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final PHONE_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final PHONE_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ContactHeaderWidget"

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHOTO_QUERY:I = 0x3


# instance fields
.field private mAggregateBadge:Landroid/view/View;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayNameView:Landroid/widget/TextView;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

.field private mNoPhotoResource:I

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/QuickContactBadge;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

.field private mStarredView:Landroid/widget/CheckBox;

.field private mStatusAttributionView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "lookup"

    const-string v5, "_id"

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "lookup"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 149
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    sput-object v0, Lcom/android/internal/widget/ContactHeaderWidget;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 172
    iget-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 174
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090020

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 176
    const v4, 0x1020189

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    .line 177
    const v4, 0x1020188

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    .line 179
    const v4, 0x102018a

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    .line 181
    const v4, 0x102018d

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    .line 182
    iget-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v4, 0x1020187

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/QuickContactBadge;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 186
    const v4, 0x102018c

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    .line 188
    const v4, 0x1020183

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    .line 189
    const v4, 0x102018b

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 193
    .local v1, now:J
    long-to-int v4, v1

    and-int/lit8 v3, v4, 0xf

    .line 194
    .local v3, num:I
    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 196
    const v4, 0x108018f

    iput v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    .line 205
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 206
    return-void

    .line 197
    :cond_0
    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 199
    const v4, 0x1080190

    iput v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    goto :goto_0

    .line 202
    :cond_1
    const v4, 0x1080191

    iput v4, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ContactHeaderWidget;)Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    return-void
.end method

.method private bindFromContactUriInternal(Landroid/net/Uri;Z)V
    .locals 0
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ContactHeaderWidget;->startContactQuery(Landroid/net/Uri;Z)V

    .line 445
    return-void
.end method

.method private loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "options"

    .prologue
    .line 655
    iget v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mNoPhotoResource:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private performDisplayNameClick()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;->onDisplayNameClick(Landroid/view/View;)V

    .line 230
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;->onPhotoClick(Landroid/view/View;)V

    .line 224
    :cond_0
    return-void
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;-><init>(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    .line 535
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 488
    if-eqz p2, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method


# virtual methods
.method protected bindContactInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "c"

    .prologue
    .line 541
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 542
    .local v11, displayName:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 543
    .local v15, phoneticName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 545
    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 546
    .local v20, starred:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 549
    const/4 v5, 0x6

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 550
    const/4 v5, 0x6

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 551
    .local v17, presence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-static/range {v17 .. v17}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    .end local v17           #presence:I
    :goto_1
    const/4 v5, 0x7

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 559
    .local v21, status:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    const/16 v22, 0x0

    .line 565
    .local v22, timestamp:Ljava/lang/CharSequence;
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 566
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 570
    .local v3, date:J
    const/high16 v9, 0x4

    .line 572
    .local v9, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v22

    .line 576
    .end local v3           #date:J
    .end local v9           #flags:I
    :cond_0
    const/4 v13, 0x0

    .line 578
    .local v13, label:Ljava/lang/String;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 579
    const/16 v5, 0x9

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 580
    .local v18, resPackage:Ljava/lang/String;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 582
    .local v14, labelResource:I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 595
    .local v19, resources:Landroid/content/res/Resources;
    :goto_2
    if-eqz v19, :cond_1

    .line 597
    :try_start_0
    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 606
    .end local v14           #labelResource:I
    .end local v18           #resPackage:Ljava/lang/String;
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_3
    if-eqz v22, :cond_5

    if-eqz v13, :cond_5

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040299

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    const/4 v8, 0x1

    aput-object v13, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 619
    .local v10, attribution:Ljava/lang/CharSequence;
    :goto_4
    if-eqz v10, :cond_8

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    .end local v10           #attribution:Ljava/lang/CharSequence;
    .end local v13           #label:Ljava/lang/String;
    .end local v22           #timestamp:Ljava/lang/CharSequence;
    :goto_5
    return-void

    .line 545
    .end local v20           #starred:Z
    .end local v21           #status:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_0

    .line 554
    .restart local v20       #starred:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 585
    .restart local v13       #label:Ljava/lang/String;
    .restart local v14       #labelResource:I
    .restart local v18       #resPackage:Ljava/lang/String;
    .restart local v21       #status:Ljava/lang/String;
    .restart local v22       #timestamp:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 587
    .local v16, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .restart local v19       #resources:Landroid/content/res/Resources;
    goto :goto_2

    .line 588
    .end local v19           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v12

    .line 589
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ContactHeaderWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact status update resource package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v19, 0x0

    .restart local v19       #resources:Landroid/content/res/Resources;
    goto :goto_2

    .line 598
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v12

    .line 599
    .local v12, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "ContactHeaderWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact status update resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 610
    .end local v12           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v14           #labelResource:I
    .end local v18           #resPackage:Ljava/lang/String;
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_5
    if-nez v22, :cond_6

    if-eqz v13, :cond_6

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040298

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 614
    .end local v10           #attribution:Ljava/lang/CharSequence;
    :cond_6
    if-eqz v22, :cond_7

    .line 615
    move-object/from16 v10, v22

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 617
    .end local v10           #attribution:Ljava/lang/CharSequence;
    :cond_7
    const/4 v10, 0x0

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 623
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 626
    .end local v10           #attribution:Ljava/lang/CharSequence;
    .end local v13           #label:Ljava/lang/String;
    .end local v22           #timestamp:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public bindFromContactLookupUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    .line 433
    return-void
.end method

.method public bindFromEmail(Ljava/lang/String;)V
    .locals 8
    .parameter "emailAddress"

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public bindFromPhoneNumber(Ljava/lang/String;)V
    .locals 8
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 472
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public enableClickListeners()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 636
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 637
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 638
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "starred"

    iget-object v2, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 644
    .end local v0           #values:Landroid/content/ContentValues;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->performPhotoClick()V

    goto :goto_0

    .line 648
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->performDisplayNameClick()V

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020187 -> :sswitch_1
        0x1020189 -> :sswitch_2
        0x102018d -> :sswitch_0
    .end sparse-switch
.end method

.method public setContactHeaderListener(Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mListener:Lcom/android/internal/widget/ContactHeaderWidget$ContactHeaderListener;

    .line 218
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->setContactUri(Landroid/net/Uri;Z)V

    .line 368
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 375
    if-eqz p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 378
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "displayName"
    .parameter "phoneticName"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    return-void
.end method

.method public setPresence(I)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    return-void
.end method

.method public setSocialSnippet(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "snippet"

    .prologue
    const/16 v1, 0x8

    .line 406
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStared(Z)V
    .locals 1
    .parameter "starred"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    return-void
.end method

.method public showAggregateBadge(Z)V
    .locals 2
    .parameter "showBagde"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    return-void

    .line 338
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showStar(Z)V
    .locals 2
    .parameter "showStar"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected startPhotoQuery(JLandroid/net/Uri;Z)V
    .locals 8
    .parameter "photoId"
    .parameter "lookupKey"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 506
    if-eqz p4, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x3

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/ContactHeaderWidget$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public wipeClean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-direct {p0}, Lcom/android/internal/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 522
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 523
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 524
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ContactHeaderWidget;->setPresence(I)V

    .line 526
    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 527
    iput-object v1, p0, Lcom/android/internal/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 528
    return-void
.end method
