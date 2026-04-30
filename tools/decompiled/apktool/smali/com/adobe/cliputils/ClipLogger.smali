.class public Lcom/adobe/cliputils/ClipLogger;
.super Ljava/lang/Object;
.source "ClipLogger.java"


# static fields
.field static mTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "Clip"

    sput-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    sput-object p0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/adobe/cliputils/ClipLogger;->d(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/adobe/cliputils/ClipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static ex(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return-void
.end method

.method public static ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0, p2}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/adobe/cliputils/ClipLogger;->v(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/adobe/cliputils/ClipLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/cliputils/ClipLogger;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
