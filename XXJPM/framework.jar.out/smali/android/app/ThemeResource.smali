.class public Landroid/app/ThemeResource;
.super Ljava/lang/Object;
.source "ThemeResource.java"


# static fields
.field public static final sFrameworkPath:Ljava/lang/String; = "framework-res"

.field public static final sIconsPath:Ljava/lang/String; = "icons"

.field public static final sThemePath:Ljava/lang/String; = "/data/system/theme1"

.field public static final sValueFilename:Ljava/lang/String; = "theme_values.xml"


# instance fields
.field private sCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private sFrameworkThemePath:Ljava/lang/String;

.field private sIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sPackageThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 7
    .parameter "packageName"
    .parameter "resouce"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v6, "%s/%s"

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Landroid/app/ThemeResource;->sPackageThemePath:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Landroid/app/ThemeResource;->sFrameworkThemePath:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ThemeResource;->sIntegers:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ThemeResource;->sCharSequences:Landroid/util/SparseArray;

    .line 60
    iget-object v0, p0, Landroid/app/ThemeResource;->sIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 61
    iget-object v0, p0, Landroid/app/ThemeResource;->sCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 63
    const-string v0, "%s/%s"

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "/data/system/theme1"

    aput-object v1, v0, v3

    const-string v1, "framework-res"

    aput-object v1, v0, v4

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ThemeResource;->sFrameworkThemePath:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/ThemeResource;->sFrameworkThemePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iput-object v2, p0, Landroid/app/ThemeResource;->sFrameworkThemePath:Ljava/lang/String;

    .line 71
    :goto_0
    const-string v0, "%s/%s"

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "/data/system/theme1"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ThemeResource;->sPackageThemePath:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/ThemeResource;->sPackageThemePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iput-object v2, p0, Landroid/app/ThemeResource;->sPackageThemePath:Ljava/lang/String;

    .line 78
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/app/ThemeResource;->sFrameworkThemePath:Ljava/lang/String;

    const-string v1, "android"

    invoke-direct {p0, v0, v1, p2}, Landroid/app/ThemeResource;->loadIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Landroid/app/ThemeResource;->sPackageThemePath:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ThemeResource;->loadIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/app/ThemeResource;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/app/ThemeResource;->sIntegers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ThemeResource;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/app/ThemeResource;->sCharSequences:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static get3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resource"
    .parameter "name"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v2, "%s/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/data/system/theme1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "icons"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, pathName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 56
    :cond_0
    return-object v0
.end method

.method private getThemeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5
    .parameter "path"
    .parameter "fileName"

    .prologue
    .line 94
    new-instance v1, Ljava/io/File;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 99
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 102
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static has3rdPartyAppIcon(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 5
    .parameter "resource"
    .parameter "name"

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "/data/system/theme1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "icons"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private loadIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 8
    .parameter "path"
    .parameter "packageName"
    .parameter "resource"

    .prologue
    .line 117
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "theme_values.xml"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 119
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 120
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v1, Landroid/app/ThemeResource$1;

    invoke-direct {v1, p0, p3, p2}, Landroid/app/ThemeResource$1;-><init>(Landroid/app/ThemeResource;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 187
    .local v1, saxHandler:Lorg/xml/sax/helpers/DefaultHandler;
    invoke-virtual {v2, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #saxHandler:Lorg/xml/sax/helpers/DefaultHandler;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v4

    goto :goto_0

    .line 191
    :catch_1
    move-exception v4

    goto :goto_0

    .line 190
    :catch_2
    move-exception v4

    goto :goto_0

    .line 189
    :catch_3
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/ThemeResource;->sCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "cookie"
    .parameter "fileName"

    .prologue
    .line 89
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/app/ThemeResource;->sFrameworkThemePath:Ljava/lang/String;

    move-object v0, v1

    .line 90
    .local v0, path:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 89
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/app/ThemeResource;->sPackageThemePath:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 90
    .restart local v0       #path:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, p2}, Landroid/app/ThemeResource;->getThemeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/app/ThemeResource;->sIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
