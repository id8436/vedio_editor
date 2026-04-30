.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;
.super Ljava/lang/Object;
.source "AdobeAGCImageComponents.java"


# instance fields
.field private imageComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;->imageComponents:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public addImageComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;->imageComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public getImageComponent(I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;->imageComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponent;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCImageComponents;->imageComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
