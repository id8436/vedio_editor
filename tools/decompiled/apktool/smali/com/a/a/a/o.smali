.class Lcom/a/a/a/o;
.super Lcom/a/a/a/g/f;
.source "ConsumerManager.java"


# instance fields
.field final synthetic a:Lcom/a/a/a/m;


# direct methods
.method constructor <init>(Lcom/a/a/a/m;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    invoke-direct {p0}, Lcom/a/a/a/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a/g/b;)V
    .locals 4

    .prologue
    .line 352
    sget-object v0, Lcom/a/a/a/l;->a:[I

    iget-object v1, p1, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/g/i;

    invoke-virtual {v1}, Lcom/a/a/a/g/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    check-cast p1, Lcom/a/a/a/g/a/i;

    invoke-static {v0, p1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;Lcom/a/a/a/g/a/i;)V

    .line 355
    iget-object v0, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    iget-object v1, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    iget-object v1, v1, Lcom/a/a/a/m;->d:Lcom/a/a/a/k/b;

    invoke-interface {v1}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/a/a/a/m;->f:J

    .line 356
    iget-object v0, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    invoke-static {v0}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    goto :goto_0

    .line 359
    :pswitch_1
    iget-object v0, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    check-cast p1, Lcom/a/a/a/g/a/e;

    invoke-static {v0, p1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;Lcom/a/a/a/g/a/e;)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 4

    .prologue
    .line 366
    const-string/jumbo v0, "consumer manager on idle"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    iget-object v0, v0, Lcom/a/a/a/m;->c:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/g;

    .line 368
    iget-object v1, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/a/g;->a(Ljava/lang/Object;)V

    .line 369
    iget-object v1, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    iget-wide v2, v1, Lcom/a/a/a/m;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/a/a/a/g/a/g;->a(J)V

    .line 370
    iget-object v1, p0, Lcom/a/a/a/o;->a:Lcom/a/a/a/m;

    iget-object v1, v1, Lcom/a/a/a/m;->b:Lcom/a/a/a/g/e;

    invoke-interface {v1, v0}, Lcom/a/a/a/g/e;->a(Lcom/a/a/a/g/b;)V

    .line 371
    return-void
.end method
