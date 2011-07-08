.class public Lcom/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field public static final APPLE_MINT:Ljava/lang/String; = "Apple mint"

.field public static final CHOCO:Ljava/lang/String; = "Choco"

.field public static final CHOCO_COOKY:Ljava/lang/String; = "Choco cooky"

.field public static final COOL:Ljava/lang/String; = "Cool"

.field public static final COOL_JAZZ:Ljava/lang/String; = "Cool jazz"

.field static final FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field static final FONT_DROID_SANS:Ljava/lang/String; = "DroidSans.ttf"

.field static final FONT_EXTENSION:Ljava/lang/String; = ".ttf"

.field static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field public static final ROSE:Ljava/lang/String; = "Rose"

.field public static final ROSE_MARY:Ljava/lang/String; = "Rosemary"

.field public static final TINKER_BELL:Ljava/lang/String; = "Tinker bell"


# instance fields
.field context:Landroid/content/Context;

.field private droidSansFont:Landroid/graphics/Typeface;

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 42
    new-instance v3, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v3}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    .line 45
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 48
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 51
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 54
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 68
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 91
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 92
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v3, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 93
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, fontPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 105
    const-string v3, "com.monotype.android.font."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 108
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 103
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #fontPackageName:Ljava/lang/String;
    .end local v1           #i:I
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/DroidSans.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 122
    return-void

    .line 115
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .parameter "typeface"
    .parameter "fontPackageName"

    .prologue
    .line 246
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, start_pos:I
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, end_pos:I
    if-gez v0, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 251
    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, loadTypeface:Ljava/lang/String;
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 256
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    return-object v4

    .line 258
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 2
    .parameter "position"
    .parameter "textView"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 213
    .local v0, fontTypeface:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f090438

    const v3, 0x7f090437

    const v2, 0x7f090436

    .line 153
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, tmpString:Ljava/lang/String;
    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 157
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_0
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 159
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_1
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 161
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_2
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 163
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_3
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 165
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_4
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 167
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_5
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 169
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_6
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 172
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_7
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109000f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 190
    .local v4, v:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-direct {p0, p1, v4}, Lcom/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 192
    const/high16 v6, -0x100

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 196
    .local v5, wm:Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 198
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 201
    .local v1, density:I
    const/high16 v6, 0x4282

    int-to-float v7, v1

    const/high16 v8, 0x4320

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 202
    .local v3, pixelHeight:I
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 204
    return-object v4

    .line 187
    .end local v1           #density:I
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #pixelHeight:I
    .end local v4           #v:Landroid/widget/TextView;
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .restart local v4       #v:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public loadTypefaces()V
    .locals 6

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, fontfile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 225
    .local v0, fontPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, newTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v2, 0x1

    .line 230
    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 231
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-direct {p0, v1, v0}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method
