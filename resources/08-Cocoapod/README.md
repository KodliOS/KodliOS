## Easy way to make your own pod.

  1. install cocoapods

  ```bash
  $ sudo gem install cocoapods
  ```

  2. Create your pod with

  ```bash
  $ pod lib create <pod_name>
  ```
     - Choice your options which ones you want

3. Create your repo on github etc. <.....>

4. Edit '\<pod_name\>.podspec'.
  - Edit description
  - Define your swift version
  ```ruby
  s.swift_version = '5.0'
  ```

5. Add your code into Classes(default) where 'ReplaceMe.swift' file shelters.

6. If you ready to push your pod.


7. If you create your repo, we can validate your pod

   ```bash
   $ pod lib lint
   ```

   - If you take warnings you can resolve them or you can use

   ```bash
   $ pod lib lint --allow-warnings
   ```

8. Push your code to repo
  ```bash
  $ git add -A && git commit -m "Release 0.0.1."
  $ git tag '0.0.1' # don't forget to edit your pod tag in podspec
  $ git push --tags
  ```

9. Register email for your pod

 ```bash
 $ pod trunk register '<your_email>'
 ```
10. Push your pod

  ```bash
  $ pod trunk push
  ```
