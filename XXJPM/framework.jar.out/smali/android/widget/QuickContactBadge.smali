.class public Landroid/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACT_LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_CONTACT_LOOKUP_AND_TRIGGER:I = 0x4

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mMode:I

.field private mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_id"

    const-string v5, "lookup"

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v5, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "lookup"

    aput-object v5, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "lookup"

    aput-object v5, v0, v3

    sput-object v0, Landroid/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/android/internal/R$styleable;->QuickContactBadge:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/QuickContactBadge;->mMode:I

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->init()V

    .line 104
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method static synthetic access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/QuickContactBadge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    .line 109
    invoke-virtual {p0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method private onContactUriChanged()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mNoBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private trigger(Landroid/net/Uri;)V
    .locals 3
    .parameter "lookupUri"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/QuickContactBadge;->mMode:I

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, p1, v1, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 219
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 157
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 158
    if-nez p2, :cond_0

    .line 159
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 164
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 178
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 185
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 131
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    .line 134
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x4

    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    sget-object v4, Landroid/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 195
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 199
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .parameter "excludeMimes"

    .prologue
    .line 214
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 118
    iput p1, p0, Landroid/widget/QuickContactBadge;->mMode:I

    .line 119
    return-void
.end method
