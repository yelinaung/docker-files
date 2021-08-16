### How to run 

```bash
runc spec # not need if config.json is already generated
sudo runc run my-container-2
```

- runc does not know how to pull, prepare, etc the image.
- it knows that there is a root fileysystem with the `config.json` that it needs to run. 
- there is no network as this will be taken care by some other project and not by runc.

Ref : [containers](https://nanikgolang.netlify.app/post/containers/)
