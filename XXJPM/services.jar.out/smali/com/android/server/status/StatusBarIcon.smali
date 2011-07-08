.class Lcom/android/server/status/StatusBarIcon;
.super Ljava/lang/Object;
.source "StatusBarIcon.java"


# static fields
.field private static final ICON_GAP:I = 0x8

.field private static final ICON_HEIGHT:I = 0x19

.field private static final ICON_WIDTH:I = 0x19


# instance fields
.field mData:Lcom/android/server/status/IconData;

.field private mImageView:Lcom/android/server/status/AnimatedImageView;

.field private mNumberView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "parent"

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p2}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    .line 51
    iget v6, p2, Lcom/android/server/status/IconData;->type:I

    packed-switch v6, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 54
    :pswitch_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v4, t:Landroid/widget/TextView;
    iput-object v4, p0, Lcom/android/server/status/StatusBarIcon;->mTextView:Landroid/widget/TextView;

    .line 56
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x4180

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    const/4 v6, 0x6

    invoke-virtual {v4, v6, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v6, p2, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iput-object v4, p0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    goto :goto_0

    .line 72
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #t:Landroid/widget/TextView;
    :pswitch_1
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 74
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x1090063

    invoke-virtual {v1, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, v:Landroid/view/View;
    iput-object v5, p0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    .line 78
    const v6, 0x102017e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/AnimatedImageView;

    .line 79
    .local v0, im:Lcom/android/server/status/AnimatedImageView;
    invoke-static {p1, p2}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/status/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget v6, p2, Lcom/android/server/status/IconData;->iconLevel:I

    invoke-virtual {v0, v6}, Lcom/android/server/status/AnimatedImageView;->setImageLevel(I)V

    .line 81
    iput-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mImageView:Lcom/android/server/status/AnimatedImageView;

    .line 84
    const v6, 0x1020055

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    .local v3, nv:Landroid/widget/TextView;
    iput-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mNumberView:Landroid/widget/TextView;

    .line 86
    iget v6, p2, Lcom/android/server/status/IconData;->number:I

    if-lez v6, :cond_0

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/server/status/IconData;->number:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 90
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const-string v6, "StatusBar"

    .line 153
    const/4 v2, 0x0

    .line 155
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    :goto_0
    iget v3, p1, Lcom/android/server/status/IconData;->iconId:I

    if-nez v3, :cond_1

    .line 167
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon ID for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 179
    :goto_1
    return-object v3

    .line 158
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 159
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 160
    goto :goto_1

    .line 163
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    .line 172
    :cond_1
    :try_start_1
    iget v3, p1, Lcom/android/server/status/IconData;->iconId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 173
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 174
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/android/server/status/IconData;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/status/IconData;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 179
    goto :goto_1

    .line 174
    :cond_2
    const-string v4, "<system>"

    goto :goto_2
.end method


# virtual methods
.method getNumber()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v0, v0, Lcom/android/server/status/IconData;->number:I

    return v0
.end method

.method public update(I)V
    .locals 4
    .parameter "number"

    .prologue
    const-string v3, ""

    .line 131
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v1, v1, Lcom/android/server/status/IconData;->number:I

    if-eq v1, p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mNumberView:Landroid/widget/TextView;

    .line 133
    .local v0, nv:Landroid/widget/TextView;
    if-lez p1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v0           #nv:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iput p1, v1, Lcom/android/server/status/IconData;->number:I

    .line 140
    return-void

    .line 136
    .restart local v0       #nv:Landroid/widget/TextView;
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public update(Landroid/content/Context;Lcom/android/server/status/IconData;)V
    .locals 6
    .parameter "context"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    const-string v5, ""

    .line 98
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->type:I

    iget v4, p2, Lcom/android/server/status/IconData;->type:I

    if-eq v3, v4, :cond_0

    .line 99
    new-instance v3, Lcom/android/server/status/StatusBarException;

    const-string v4, "status bar entry type can\'t change"

    invoke-direct {v3, v4}, Lcom/android/server/status/StatusBarException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    iget v3, p2, Lcom/android/server/status/IconData;->type:I

    packed-switch v3, :pswitch_data_0

    .line 127
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, p2}, Lcom/android/server/status/IconData;->copyFrom(Lcom/android/server/status/IconData;)V

    .line 128
    return-void

    .line 103
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v3, v3, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/server/status/StatusBarIcon;->mTextView:Landroid/widget/TextView;

    .line 105
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p2, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    .end local v2           #tv:Landroid/widget/TextView;
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v3, v3, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v3, v3, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->iconId:I

    iget v4, p2, Lcom/android/server/status/IconData;->iconId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->iconLevel:I

    iget v4, p2, Lcom/android/server/status/IconData;->iconLevel:I

    if-eq v3, v4, :cond_4

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mImageView:Lcom/android/server/status/AnimatedImageView;

    .line 114
    .local v0, im:Landroid/widget/ImageView;
    invoke-static {p1, p2}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/status/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget v3, p2, Lcom/android/server/status/IconData;->iconLevel:I

    invoke-virtual {v0, v3}, Lcom/android/server/status/AnimatedImageView;->setImageLevel(I)V

    .line 117
    .end local v0           #im:Landroid/widget/ImageView;
    :cond_4
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->number:I

    iget v4, p2, Lcom/android/server/status/IconData;->number:I

    if-eq v3, v4, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mNumberView:Landroid/widget/TextView;

    .line 119
    .local v1, nv:Landroid/widget/TextView;
    iget v3, p2, Lcom/android/server/status/IconData;->number:I

    if-lez v3, :cond_5

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/server/status/IconData;->number:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_5
    const-string v3, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
