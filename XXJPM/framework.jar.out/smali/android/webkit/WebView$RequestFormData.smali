.class Landroid/webkit/WebView$RequestFormData;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestFormData"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "url"
    .parameter "msg"

    .prologue
    .line 4119
    iput-object p1, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4120
    iput-object p2, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    .line 4121
    iput-object p3, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    .line 4122
    iput-object p4, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    .line 4123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4126
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewDatabase;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4127
    .local v1, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4128
    new-instance v0, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4130
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4131
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4133
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_0
    return-void
.end method
