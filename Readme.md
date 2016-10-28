# Docker PHP ToolBox

Docker container that includes:

- php7 (CLI)
- composer

## Usage

### Build

```
> docker build -t php-tools .
```

### Run

```
>  docker run --rm -v $(pwd):/data php-tools <cmd>
>  docker run --rm -v $(pwd):/data php-tools php -v
>  docker run --rm -v $(pwd):/data php-tools composer
```
