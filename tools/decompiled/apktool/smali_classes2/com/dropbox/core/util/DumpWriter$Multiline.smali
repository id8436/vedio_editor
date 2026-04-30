.class public final Lcom/dropbox/core/util/DumpWriter$Multiline;
.super Lcom/dropbox/core/util/DumpWriter;
.source "DumpWriter.java"


# instance fields
.field private final buf:Ljava/lang/StringBuilder;

.field private currentIndent:I

.field private final indentAmount:I

.field nl:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;IIZ)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 28
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'buf\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'indentAmount\' must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'currentIndent\' must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    .line 32
    iput p2, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentAmount:I

    .line 33
    iput p3, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    .line 34
    iput-boolean p4, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;IZ)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/core/util/DumpWriter$Multiline;-><init>(Ljava/lang/StringBuilder;IIZ)V

    .line 40
    return-void
.end method

.method private indentLess()V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentAmount:I

    iget v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "indent went negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    iget v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentAmount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    .line 63
    return-void
.end method

.method private indentMore()V
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    iget v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentAmount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    .line 57
    return-void
.end method

.method private prefix()V
    .locals 4

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    if-eqz v0, :cond_0

    .line 47
    iget v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->currentIndent:I

    .line 48
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "called fieldStart() in a bad state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->prefix()V

    .line 94
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 96
    return-object p0
.end method

.method public listEnd()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "called listEnd() in a bad state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentLess()V

    .line 114
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->prefix()V

    .line 115
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 117
    return-object p0
.end method

.method public listStart()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->prefix()V

    .line 103
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 105
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentMore()V

    .line 106
    return-object p0
.end method

.method public recordEnd()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "called recordEnd() in a bad state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentLess()V

    .line 83
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->prefix()V

    .line 84
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 86
    return-object p0
.end method

.method public recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->prefix()V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 74
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->indentMore()V

    .line 75
    return-object p0
.end method

.method public verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->prefix()V

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->buf:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->nl:Z

    .line 127
    return-object p0
.end method
