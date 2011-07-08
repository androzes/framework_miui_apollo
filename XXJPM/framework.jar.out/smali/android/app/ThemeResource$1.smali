.class Landroid/app/ThemeResource$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ThemeResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ThemeResource;->loadIntegersFromTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ELEMENT_TYPE_BOOLEAN:I = 0x2

.field private static final ELEMENT_TYPE_INTEGER:I = 0x1

.field private static final ELEMENT_TYPE_INVALIDE:I = -0x1

.field private static final ELEMENT_TYPE_STRING:I = 0x3


# instance fields
.field private mElementType:I

.field private mId:I

.field final synthetic this$0:Landroid/app/ThemeResource;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$resource:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/app/ThemeResource;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    iput-object p2, p0, Landroid/app/ThemeResource$1;->val$resource:Landroid/content/res/Resources;

    iput-object p3, p0, Landroid/app/ThemeResource$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    iget v1, p0, Landroid/app/ThemeResource$1;->mElementType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 163
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget v1, p0, Landroid/app/ThemeResource$1;->mElementType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroid/app/ThemeResource$1;->mElementType:I

    .line 170
    iget-object v1, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v1}, Landroid/app/ThemeResource;->access$000(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Landroid/app/ThemeResource$1;->mId:I

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v1, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v1}, Landroid/app/ThemeResource;->access$000(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Landroid/app/ThemeResource$1;->mId:I

    const-string/jumbo v3, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .line 178
    :pswitch_2
    iget-object v1, p0, Landroid/app/ThemeResource$1;->this$0:Landroid/app/ThemeResource;

    invoke-static {v1}, Landroid/app/ThemeResource;->access$100(Landroid/app/ThemeResource;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Landroid/app/ThemeResource$1;->mId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ThemeResource$1;->mElementType:I

    .line 185
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 131
    const-string v3, "package"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, attr_package:Ljava/lang/String;
    move-object v2, p2

    .line 133
    .local v2, attr_type:Ljava/lang/String;
    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, attr_name:Ljava/lang/String;
    iput v4, p0, Landroid/app/ThemeResource$1;->mElementType:I

    .line 137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 142
    iput v4, p0, Landroid/app/ThemeResource$1;->mId:I

    .line 143
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/app/ThemeResource$1;->val$resource:Landroid/content/res/Resources;

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_1
    iput v3, p0, Landroid/app/ThemeResource$1;->mId:I

    .line 146
    iget v3, p0, Landroid/app/ThemeResource$1;->mId:I

    if-lez v3, :cond_0

    .line 147
    const-string v3, "integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "color"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0

    .line 143
    :cond_3
    iget-object v3, p0, Landroid/app/ThemeResource$1;->val$resource:Landroid/content/res/Resources;

    iget-object v4, p0, Landroid/app/ThemeResource$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 149
    :cond_4
    const-string v3, "bool"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    const/4 v3, 0x2

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0

    .line 151
    :cond_5
    const-string/jumbo v3, "string"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const/4 v3, 0x3

    iput v3, p0, Landroid/app/ThemeResource$1;->mElementType:I

    goto :goto_0
.end method
