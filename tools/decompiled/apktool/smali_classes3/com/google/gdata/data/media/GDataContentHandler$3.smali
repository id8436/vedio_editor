.class Lcom/google/gdata/data/media/GDataContentHandler$3;
.super Lcom/google/gdata/wireformats/input/ForwardingInputProperties;
.source "GDataContentHandler.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/media/GDataContentHandler;

.field final synthetic val$contentType:Lcom/google/gdata/util/ContentType;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/media/GDataContentHandler;Lcom/google/gdata/wireformats/input/InputProperties;Lcom/google/gdata/util/ContentType;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/gdata/data/media/GDataContentHandler$3;->this$0:Lcom/google/gdata/data/media/GDataContentHandler;

    iput-object p3, p0, Lcom/google/gdata/data/media/GDataContentHandler$3;->val$contentType:Lcom/google/gdata/util/ContentType;

    invoke-direct {p0, p2}, Lcom/google/gdata/wireformats/input/ForwardingInputProperties;-><init>(Lcom/google/gdata/wireformats/input/InputProperties;)V

    return-void
.end method


# virtual methods
.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/gdata/data/media/GDataContentHandler$3;->val$contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method
