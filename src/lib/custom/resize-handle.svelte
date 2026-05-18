<script lang="ts">
  type Direction = 'right' | 'left' | 'top' | 'bottom' | 'top-left' | 'top-right' | 'bottom-left' | 'bottom-right';
  type Props = { direction: Direction };
  let { direction }: Props = $props();

  let isDragging = false;

  let rect: DOMRect | undefined = undefined;
  let element: HTMLElement | null = null;

  let startMouseX: number;
  let startMouseY: number;
  let startWidth: number;
  let startHeight: number;
  let minimumWidth: number;
  let minimumHeight: number;
  let maximumWidth: number;
  let maximumHeight: number;

  function startResize(event: MouseEvent) {
    event.preventDefault();

    rect = (event.target as HTMLElement).parentElement?.getBoundingClientRect();
    if (!rect) return;

    element = (event.target as HTMLElement).parentElement;
    if (!element) return;

    isDragging = true;

    startMouseX = event.clientX;
    startMouseY = event.clientY;
    startWidth = rect.width;
    startHeight = rect.height;

    minimumWidth = element.style.minWidth ? parseInt(element.style.minWidth) : 0;
    minimumHeight = element.style.minHeight ? parseInt(element.style.minHeight) : 0;
    maximumWidth = element.style.maxWidth ? parseInt(element.style.maxWidth) : window.innerWidth;
    maximumHeight = element.style.maxHeight ? parseInt(element.style.maxHeight) : window.innerHeight;

    window.addEventListener('pointermove', resize);
    window.addEventListener('pointerup', stopResize);
  }
  function resize(event: PointerEvent) {
    if (!isDragging) return;

    const deltaX = event.clientX - startMouseX;
    const deltaY = event.clientY - startMouseY;

    let newWidth = startWidth;
    let newHeight = startHeight;

    if (direction.includes('right')) newWidth = startWidth + deltaX * 2;
    if (direction.includes('left')) newWidth = startWidth - deltaX * 2;
    if (direction.includes('bottom')) newHeight = startHeight + deltaY * 2;
    if (direction.includes('top')) newHeight = startHeight - deltaY * 2;

    newWidth = Math.min(maximumWidth, Math.max(minimumWidth, newWidth));
    newHeight = Math.min(maximumHeight, Math.max(minimumHeight, newHeight));

    element?.style.setProperty('width', newWidth + 'px');
    element?.style.setProperty('height', newHeight + 'px');
  }
  function stopResize() {
    if (!isDragging) return;

    isDragging = false;

    window.removeEventListener('pointermove', resize);
    window.removeEventListener('pointerup', stopResize);
  }
</script>

<button class="handle {direction}" aria-label={`Resize ${direction}`} onpointerdown={(e) => startResize(e)}></button>

<style>
  .handle {
    position: absolute;
    z-index: 999;
    --handle-size: 10px;
    touch-action: none;
  }

  .right {
    right: calc(var(--handle-size) * -0.5);
    top: calc(var(--handle-size) * 0.5);
    width: var(--handle-size);
    height: calc(100% - var(--handle-size));
    cursor: ew-resize;
  }

  .left {
    left: calc(var(--handle-size) * -0.5);
    top: calc(var(--handle-size) * 0.5);
    width: var(--handle-size);
    height: calc(100% - var(--handle-size));
    cursor: ew-resize;
  }

  .top {
    top: calc(var(--handle-size) * -0.5);
    left: calc(var(--handle-size) * 0.5);
    width: calc(100% - var(--handle-size));
    height: var(--handle-size);
    cursor: ns-resize;
  }

  .bottom {
    bottom: calc(var(--handle-size) * -0.5);
    left: calc(var(--handle-size) * 0.5);
    width: calc(100% - var(--handle-size));
    height: var(--handle-size);
    cursor: ns-resize;
  }

  .top-left {
    top: calc(var(--handle-size) * -0.5);
    left: calc(var(--handle-size) * -0.5);
    width: var(--handle-size);
    height: var(--handle-size);
    cursor: nwse-resize;
  }

  .top-right {
    top: calc(var(--handle-size) * -0.5);
    right: calc(var(--handle-size) * -0.5);
    width: var(--handle-size);
    height: var(--handle-size);
    cursor: nesw-resize;
  }

  .bottom-left {
    bottom: calc(var(--handle-size) * -0.5);
    left: calc(var(--handle-size) * -0.5);
    width: var(--handle-size);
    height: var(--handle-size);
    cursor: nesw-resize;
  }

  .bottom-right {
    bottom: calc(var(--handle-size) * -0.5);
    right: calc(var(--handle-size) * -0.5);
    width: var(--handle-size);
    height: var(--handle-size);
    cursor: nwse-resize;
  }
</style>
