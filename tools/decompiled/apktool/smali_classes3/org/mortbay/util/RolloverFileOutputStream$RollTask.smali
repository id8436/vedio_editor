.class Lorg/mortbay/util/RolloverFileOutputStream$RollTask;
.super Ljava/util/TimerTask;
.source "RolloverFileOutputStream.java"


# instance fields
.field private final this$0:Lorg/mortbay/util/RolloverFileOutputStream;


# direct methods
.method private constructor <init>(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/util/RolloverFileOutputStream;Lorg/mortbay/util/RolloverFileOutputStream$1;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;-><init>(Lorg/mortbay/util/RolloverFileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->access$100(Lorg/mortbay/util/RolloverFileOutputStream;)V

    .line 320
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->access$200(Lorg/mortbay/util/RolloverFileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
