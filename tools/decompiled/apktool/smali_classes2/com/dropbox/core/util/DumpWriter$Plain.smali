.class public final Lcom/dropbox/core/util/DumpWriter$Plain;
.super Lcom/dropbox/core/util/DumpWriter;
.source "DumpWriter.java"


# instance fields
.field private buf:Ljava/lang/StringBuilder;

.field private needSep:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    .line 137
    iput-object p1, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    .line 138
    return-void
.end method

.method private sep()V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    goto :goto_0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Plain;->sep()V

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    .line 176
    return-object p0
.end method

.method public listEnd()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    .line 193
    return-object p0
.end method

.method public listStart()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Plain;->sep()V

    .line 183
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    .line 185
    return-object p0
.end method

.method public recordEnd()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    .line 167
    return-object p0
.end method

.method public recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->needSep:Z

    .line 159
    return-object p0
.end method

.method public verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter$Plain;->sep()V

    .line 200
    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Plain;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    return-object p0
.end method
