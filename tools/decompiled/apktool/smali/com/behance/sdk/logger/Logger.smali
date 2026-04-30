.class public Lcom/behance/sdk/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private DEBUG:Z

.field private ERROR:Z

.field private INFO:Z

.field private LOG_LEVEL:I

.field private WARN:Z

.field private WTF:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v3, p0, Lcom/behance/sdk/logger/Logger;->LOG_LEVEL:I

    .line 33
    iget v0, p0, Lcom/behance/sdk/logger/Logger;->LOG_LEVEL:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WTF:Z

    .line 34
    iget v0, p0, Lcom/behance/sdk/logger/Logger;->LOG_LEVEL:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->ERROR:Z

    .line 35
    iget v0, p0, Lcom/behance/sdk/logger/Logger;->LOG_LEVEL:I

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WARN:Z

    .line 36
    iget v0, p0, Lcom/behance/sdk/logger/Logger;->LOG_LEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->INFO:Z

    .line 37
    iget v0, p0, Lcom/behance/sdk/logger/Logger;->LOG_LEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/behance/sdk/logger/Logger;->DEBUG:Z

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    .line 43
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v0, v2

    .line 34
    goto :goto_1

    :cond_2
    move v0, v2

    .line 35
    goto :goto_2

    :cond_3
    move v0, v2

    .line 36
    goto :goto_3

    :cond_4
    move v1, v2

    .line 37
    goto :goto_4
.end method

.method private varargs getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    .line 153
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 159
    :cond_0
    :goto_0
    return-object p1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/behance/sdk/logger/Logger;->error(Ljava/lang/Throwable;)V

    .line 159
    const-string/jumbo p1, ""

    goto :goto_0
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->ERROR:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->ERROR:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->ERROR:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->INFO:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->INFO:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->INFO:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WARN:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WARN:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WARN:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WTF:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WTF:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/behance/sdk/logger/Logger;->WTF:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/behance/sdk/logger/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/behance/sdk/logger/Logger;->getFormattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_0
    return-void
.end method
