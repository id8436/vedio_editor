.class Lcom/google/gdata/util/common/io/LineReader$1;
.super Lcom/google/gdata/util/common/io/LineBuffer;
.source "LineReader.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/io/LineReader;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/io/LineReader;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/gdata/util/common/io/LineReader$1;->this$0:Lcom/google/gdata/util/common/io/LineReader;

    invoke-direct {p0}, Lcom/google/gdata/util/common/io/LineBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/gdata/util/common/io/LineReader$1;->this$0:Lcom/google/gdata/util/common/io/LineReader;

    invoke-static {v0}, Lcom/google/gdata/util/common/io/LineReader;->access$000(Lcom/google/gdata/util/common/io/LineReader;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
