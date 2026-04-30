.class final Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput$1;
.super Ljava/lang/Object;
.source "Adobe360WorkflowActionOutput.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput$1;->createFromParcel(Landroid/os/Parcel;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput$1;->newArray(I)[Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360WorkflowActionOutput;

    move-result-object v0

    return-object v0
.end method
