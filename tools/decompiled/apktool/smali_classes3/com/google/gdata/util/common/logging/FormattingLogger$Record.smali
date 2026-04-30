.class public Lcom/google/gdata/util/common/logging/FormattingLogger$Record;
.super Ljava/util/logging/LogRecord;
.source "FormattingLogger.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final formatterArgs:[Ljava/lang/Object;

.field private final formatterFormat:Ljava/lang/String;

.field private needToInferCaller:Z

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    .line 131
    iput-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p3}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceClassName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceMethodName(Ljava/lang/String;)V

    .line 159
    iput-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 141
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    .line 143
    iput-object p2, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 145
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p4}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceClassName(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p5}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceMethodName(Ljava/lang/String;)V

    .line 172
    iput-object p2, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    .line 174
    return-void
.end method


# virtual methods
.method public getFormatterArgs()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatterFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->formatterFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/google/gdata/util/common/logging/FormattingLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->inferCaller(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/google/gdata/util/common/logging/FormattingLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->inferCaller(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method protected inferCaller(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->needToInferCaller:Z

    .line 183
    const/4 v0, 0x1

    .line 184
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 185
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 188
    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    move v0, v1

    .line 184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_1
    if-nez v7, :cond_0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0, v6}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceClassName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->setSourceMethodName(Ljava/lang/String;)V

    .line 199
    :cond_2
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceClassName:Ljava/lang/String;

    .line 115
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/gdata/util/common/logging/FormattingLogger$Record;->sourceMethodName:Ljava/lang/String;

    .line 121
    invoke-super {p0, p1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 122
    return-void
.end method
